import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/generic_one_bloc/child_bloc.dart';
import '../data/models/section_model.dart';
import '../domain/bloc/top_stories_bloc.dart';

class BlocSectionView extends StatelessWidget {
  const BlocSectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChildBloc, ChildBlocState>(
      bloc: context.read<TopStoriesBloc>().sectionBloc,
      builder: (context, state) => state.map(
        loadingState: (value) => const Center(child: CircularProgressIndicator()),
        loadedState: (value) => SectionView(list: value.data),
        errorState: (value) => Center(child: Text(value.exception)),
      ),
    );
  }
}

class SectionView extends StatefulWidget {
  final List<SectionModel> list;

  const SectionView({super.key, required this.list});

  @override
  State<SectionView> createState() => _SectionViewState();
}

class _SectionViewState extends State<SectionView> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(8),
          itemCount: widget.list.length,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 50,
              child: InkWell(
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: selectedIndex == index ? Theme.of(context).primaryColor : Colors.white,
                        border: Border.all(),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 6, bottom: 6, left: 6, right: 24),
                        child: Text(
                          widget.list[index].section,
                          style: TextStyle(color: selectedIndex == index ? Colors.white : Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: InkWell(
                        child: Icon(
                          widget.list[index].favorite == 0 ? Icons.favorite_border : Icons.favorite,
                          size: 20,
                          color: widget.list[index].favorite == 0 ? Colors.black : Colors.red,
                        ),
                        onTap: () {
                          setState(() {
                            if (widget.list[index].favorite == 0) {
                              widget.list[index].favorite = 1;
                            } else {
                              widget.list[index].favorite = 0;
                            }
                            final bloc = context.read<TopStoriesBloc>();
                            bloc.add(TopStoriesEvent.favoriteSection(widget.list[index].section, widget.list[index].favorite));
                          });
                        },
                      ),
                    ),
                  ],
                ),
                onTap: () => setState(() {
                  final bloc = context.read<TopStoriesBloc>();
                  if (selectedIndex == index) {
                    selectedIndex = -1;
                    bloc.add(const TopStoriesEvent.filterSection(''));
                  } else {
                    selectedIndex = index;
                    bloc.add(TopStoriesEvent.filterSection(widget.list[index].section));
                  }
                }),
              ),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(width: 8);
          }),
    );
  }
}
