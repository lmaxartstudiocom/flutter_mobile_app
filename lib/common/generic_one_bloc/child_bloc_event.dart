part of 'child_bloc.dart';

@freezed
class ChildBlocEvent<T> with _$ChildBlocEvent<T> {
  const factory ChildBlocEvent.showLoading() = ShowLoadingEvent<T>;

  const factory ChildBlocEvent.showLoaded({
    required T data,
  }) = LoadedEvent<T>;

  const factory ChildBlocEvent.refresh() = RefreshEvent<T>;

  const factory ChildBlocEvent.showError({
    required String exception,
  }) = ShowErrorEvent<T>;
}
