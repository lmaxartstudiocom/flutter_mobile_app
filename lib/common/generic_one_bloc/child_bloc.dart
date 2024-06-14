import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'child_bloc_event.dart';

part 'child_bloc_state.dart';

part 'child_bloc.freezed.dart';

class ChildBloc<T> extends Bloc<ChildBlocEvent<T>, ChildBlocState<T>> {
  ChildBloc([T? initialData]) : super(initialData == null ? _LoadingState<T>() : _LoadedState<T>(data: initialData)) {
    on<ChildBlocEvent<T>>(
      (event, emit) => event.map(
        showLoading: (event) => _onShowLoading(event, emit.call),
        showLoaded: (event) => _onShowLoaded(event, emit.call),
        showError: (event) => _onShowError(event, emit.call),
        refresh: (event) => _onRefresh(event, emit.call),
      ),
    );
  }

  T? getValue() {
    return state.map(
      loadingState: (state) {
        return null;
      },
      loadedState: (state) {
        return state.data;
      },
      errorState: (state) {
        return null;
      },
    );
  }

  void setValue(T data) {
    add(ChildBlocEvent.showLoaded(data: data));
  }

  void _onShowLoading(
    ShowLoadingEvent event,
    Function(ChildBlocState<T>) emit,
  ) {
    emit(const ChildBlocState.loadingState());
  }

  void _onRefresh(
    RefreshEvent event,
    Function(ChildBlocState<T>) emit,
  ) {
    emit(state.copyWith(isRefresh: true));
  }

  void _onShowError(
    ShowErrorEvent event,
    Function(ChildBlocState<T>) emit,
  ) {
    emit(ChildBlocState.errorState(exception: event.exception));
  }

  void _onShowLoaded(
    LoadedEvent<T> event,
    Function(ChildBlocState<T>) emit,
  ) {
    emit(ChildBlocState.loadedState(data: event.data));
  }
}
