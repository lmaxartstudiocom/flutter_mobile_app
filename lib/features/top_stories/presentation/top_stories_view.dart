import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobile_app/features/top_stories/presentation/widgets/top_stories_item.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../data/models/top_stories_db_model.dart';
import '../domain/bloc/top_stories_bloc.dart';
import 'bloc_section_view.dart';

class TopStoriesView extends StatefulWidget {
  final PagingController<int, ResultView> pagingController;
  final TextEditingController textEditingController;
  final ValueNotifier<String> loadNotifier;
  final ValueNotifier<bool> isConnected;
  final ValueNotifier<String> thereAreNewOnes;

  const TopStoriesView({
    super.key,
    required this.pagingController,
    required this.textEditingController,
    required this.loadNotifier,
    required this.isConnected,
    required this.thereAreNewOnes,
  });

  @override
  State<TopStoriesView> createState() => _TopStoriesViewState();
}

class _TopStoriesViewState extends State<TopStoriesView> {
  ValueNotifier<bool> showNew = ValueNotifier<bool>(false);

  @override
  void initState() {
    super.initState();
    widget.thereAreNewOnes.addListener(() {
      if (widget.thereAreNewOnes.value.isNotEmpty) {
        if (!showNew.value) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('New in section: ${widget.thereAreNewOnes.value}'),
            ),
          );
        }
      }
    });
    FirebaseMessaging.onMessage.listen(showNotification);
  }

  void showNotification(RemoteMessage message) {
    showNew.value = true;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('New in section: ${message.notification!.body!}'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double valueIndicator = 0;

    return Column(
      children: [
        Expanded(
          flex: 0,
          child: ValueListenableBuilder(
              valueListenable: widget.isConnected,
              builder: (BuildContext context, bool value, Widget? child) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Тестовое задание', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600)),
                      Icon(value ? Icons.online_prediction_outlined : Icons.offline_bolt_outlined),
                    ],
                  ),
                );
              }),
        ),
        const Divider(),
        Expanded(
          flex: 0,
          child: ValueListenableBuilder(
            valueListenable: widget.loadNotifier,
            builder: (BuildContext context, String value, Widget? child) {
              valueIndicator = valueIndicator + 1 / sections.length;
              return widget.loadNotifier.value != ''
                  ? Column(
                      children: [
                        Padding(padding: const EdgeInsets.all(8.0), child: Text(value)),
                        LinearProgressIndicator(value: valueIndicator),
                      ],
                    )
                  : const SizedBox.shrink();
            },
          ),
        ),
        Expanded(
            flex: 0,
            child: TextField(
              controller: widget.textEditingController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                labelText: 'Поиск',
              ),
            )),
        const Expanded(flex: 0, child: BlocSectionView()),
        Expanded(
          flex: 1,
          child: PagedListView<int, ResultView>(
            pagingController: widget.pagingController,
            builderDelegate: PagedChildBuilderDelegate<ResultView>(
              animateTransitions: true,
              itemBuilder: (context, item, index) => TopStoriesItem(item: item),
              firstPageProgressIndicatorBuilder: (context) => const Center(child: CircularProgressIndicator()),
              newPageProgressIndicatorBuilder: (context) => const Center(child: CircularProgressIndicator()),
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: ValueListenableBuilder(
            valueListenable: showNew,
            builder: (BuildContext context, bool value, Widget? child) {
              return FilledButton(
                style: FilledButton.styleFrom(foregroundColor: Colors.white),
                child: Text(value ? 'all' : 'new'),
                onPressed: () {
                  showNew.value = !showNew.value;
                  final bloc = context.read<TopStoriesBloc>();
                  bloc.add(TopStoriesEvent.filterNew(showNew.value));
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
