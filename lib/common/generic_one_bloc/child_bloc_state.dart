part of 'child_bloc.dart';

@freezed
class ChildBlocState<T> with _$ChildBlocState<T> {
  const factory ChildBlocState.loadingState({
    @Default(false) bool isRefresh,
  }) = _LoadingState<T>;

  const factory ChildBlocState.loadedState({
    @Default(false) bool isRefresh,
    required T data,
  }) = _LoadedState<T>;

  const factory ChildBlocState.errorState({
    @Default(false) bool isRefresh,
    required String exception,
  }) = _ErrorState<T>;
}
