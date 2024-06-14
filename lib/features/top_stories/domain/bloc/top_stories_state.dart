part of 'top_stories_bloc.dart';

@freezed
class TopStoriesState with _$TopStoriesState {
  const factory TopStoriesState.initial() = _Initial;
  const factory TopStoriesState.loading() = _LoadingState;
  const factory TopStoriesState.data() = _DataState;
}
