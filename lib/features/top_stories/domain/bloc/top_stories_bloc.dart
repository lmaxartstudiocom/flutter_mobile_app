import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

import '../../../../common/generic_one_bloc/child_bloc.dart';
import '../../data/app_db.dart';
import '../../data/app_repository.dart';
import '../../data/models/section_model.dart';
import '../../data/models/top_stories_db_model.dart';
import '../../data/models/top_stories_model.dart';

part 'top_stories_event.dart';

part 'top_stories_state.dart';

part 'top_stories_bloc.freezed.dart';

List<String> sections = [
  'arts',
  'automobiles',
  'books',
  'business',
  'fashion',
  'food',
  'health',
  'home',
  'insider',
  'magazine',
  'movies',
  'nyregion',
  'obituaries',
  'opinion',
  'politics',
  'realestate',
  'science',
  'sports',
  'sundayreview',
  'technology',
  'theater',
  't-magazine',
  'travel',
  'upshot',
  'us',
  'world'
];

class TopStoriesBloc extends Bloc<TopStoriesEvent, TopStoriesState> {
  final AppRepository repo;

  final PagingController<int, ResultView> pagingController = PagingController(firstPageKey: 1);
  TopStoriesDatabase db = TopStoriesDatabase.instance;
  final int limit = 10;
  int offset = 0;
  int count = 0;
  bool isUpdated = false;
  final ChildBloc<List<SectionModel>> sectionBloc = ChildBloc<List<SectionModel>>();
  String filterSection = '';
  String filterTitle = '';
  bool filterNew = false;
  String sql = 'select * from stories';
  TextEditingController textEditingController = TextEditingController();
  ValueNotifier<String> loadNotifier = ValueNotifier<String>('');
  List<SectionModel> sectionList = [];
  ValueNotifier<bool> isConnected = ValueNotifier<bool>(true);
  ValueNotifier<String> thereAreNewOnes = ValueNotifier<String>('');
  final InternetConnectionChecker customInstance = InternetConnectionChecker.createInstance(
    checkTimeout: const Duration(seconds: 5),
    checkInterval: const Duration(seconds: 5),
  );

  TopStoriesBloc(this.repo) : super(const _Initial()) {
    on<_InitialEvent>(_onInit);
    on<_FilterSectionEvent>(_onFilterSectionEvent);
    on<_FavoriteSectionEvent>(_onFavoriteSectionEvent);
    on<_FilterNewsEvent>(_onFilterNewsEvent);
    pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    textEditingController.addListener(() {
      filterTitle = textEditingController.text;
      sql = db.filterSql(showNew: filterNew, section: filterSection, title: filterTitle, limit: limit, offset: offset);
      pagingController.refresh();
    });
    InternetConnectionChecker().onStatusChange.listen(
      (InternetConnectionStatus status) {
        final _isConnected = status == InternetConnectionStatus.connected;
        if (!isConnected.value && _isConnected && !isUpdated) {
          update(0);
        }
        isConnected.value = status == InternetConnectionStatus.connected;
      },
    );
  }

  Future<void> _onInit(
    _InitialEvent event,
    Emitter<TopStoriesState> emit,
  ) async {
    try {
      final firstPage = (await db.count())! == 0;
      if (firstPage) {
        emit(const _LoadingState());
        await readSection(sections[0]);
        pagingController.refresh();
        emit(const _DataState());
        await updateSectionList();
        await update(1);
        isUpdated = true;
      } else {
        emit(const _DataState());
        await updateSectionList();
        await update(0);
        await updateSectionList();
        isUpdated = true;
      }
      loadNotifier.value = '';
    } catch (error) {
      pagingController.error = error;
    }
  }

  Future<void> readSection(String topSection) async {
    final topStories = await repo.getTopStories(topSection);
    final TopStoriesDB? topStoriesDB = await db.readTopStories(topSection);
    if (topStoriesDB != null) {
      if (topStoriesDB.lastUpdated != topStories.lastUpdated) {
        thereAreNewOnes.value = topSection;
        sendMail(to: 'al1707@mail.ru', text: topSection, subject: 'new');
//        await db.deleteTopStories(topSection);
//        await insert(topStories, topSection);
      }
    } else {
      await insert(topStories, topSection);
    }
  }

  Future<void> insert(TopStoriesModel topStories, String topSection) async {
    await db.insert(topStories, topSection);
    count = (await db.count())!;
    final list = await db.readSections();
    if (list.length != sectionList.length) {
      sectionList = list;
      sectionBloc.add(ChildBlocEvent.showLoaded(data: sectionList));
    }
  }

  Future<void> update(int startIndex) async {
    for (var i = startIndex; i < sections.length; ++i) {
      loadNotifier.value = sections[i];
      await readSection(sections[i]);
      pagingController.refresh();
      // пауза, чтоб сайт не выдавал ошибку
      await Future.delayed(const Duration(seconds: 10));
    }
  }

  Future<void> updateSectionList() async {
    final list = await db.readSections();
    if (sectionList.length != list.length) {
      sectionList = list;
      sectionBloc.add(ChildBlocEvent.showLoaded(data: sectionList));
    }
  }

  Future<void> _onFilterSectionEvent(
    _FilterSectionEvent event,
    Emitter<TopStoriesState> emit,
  ) async {
    filterSection = event.section;
    sql = db.filterSql(showNew: filterNew, section: filterSection, title: filterTitle, limit: limit, offset: offset);
    pagingController.refresh();
  }

  Future<void> _onFilterNewsEvent(
      _FilterNewsEvent event,
      Emitter<TopStoriesState> emit,
      ) async {
    filterNew = event.showNew;
    sql = db.filterSql(showNew: filterNew, section: filterSection, title: filterTitle, limit: limit, offset: offset);
    pagingController.refresh();
  }

  Future<void> _onFavoriteSectionEvent(
    _FavoriteSectionEvent event,
    Emitter<TopStoriesState> emit,
  ) async {
    db.updateSections(event.section, event.favorite);
  }

  Future<void> _fetchPage(pageKey) async {
    try {
      if (pageKey == 1) {
        offset = 0;
      }
      final topStories = await db.read(sql);
      offset += limit;
      if (offset < count) {
        final nextPageKey = pageKey + 1;
        pagingController.appendPage(topStories, nextPageKey);
      } else {
        pagingController.appendLastPage(topStories);
      }
    } catch (error) {
      pagingController.error = error;
    }
  }

  Future<void> sendMail({required String to, required String text, required String subject}) async {
    String username = 'eq092023@mail.ru';
    String password = '0ixwaXMJvYdY35ZzmDyx';
    final message = Message()
      ..from = username
      ..recipients.add(to)
      ..text = text
      ..subject = subject;

    try {
      final smtpServer = SmtpServer(
        'smtp.mail.ru',
        username: username,
        password: password,
        ignoreBadCertificate: true,
      );
      final sendReport = await send(message, smtpServer);
      print(sendReport.toString());
    } on MailerException catch (e) {
      print(e.message);
    }
  }
}
