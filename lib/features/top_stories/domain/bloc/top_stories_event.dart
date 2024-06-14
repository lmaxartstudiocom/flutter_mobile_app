part of 'top_stories_bloc.dart';

@freezed
class TopStoriesEvent with _$TopStoriesEvent {
  const factory TopStoriesEvent.init() = _InitialEvent;
  const factory TopStoriesEvent.filterSection(String section) = _FilterSectionEvent;
  const factory TopStoriesEvent.favoriteSection(String section, int favorite) = _FavoriteSectionEvent;
  const factory TopStoriesEvent.filterNew(bool showNew) = _FilterNewsEvent;
}