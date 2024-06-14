// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_stories_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopStoriesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String section) filterSection,
    required TResult Function(String section, int favorite) favoriteSection,
    required TResult Function(bool showNew) filterNew,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String section)? filterSection,
    TResult? Function(String section, int favorite)? favoriteSection,
    TResult? Function(bool showNew)? filterNew,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String section)? filterSection,
    TResult Function(String section, int favorite)? favoriteSection,
    TResult Function(bool showNew)? filterNew,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_FilterSectionEvent value) filterSection,
    required TResult Function(_FavoriteSectionEvent value) favoriteSection,
    required TResult Function(_FilterNewsEvent value) filterNew,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_FilterSectionEvent value)? filterSection,
    TResult? Function(_FavoriteSectionEvent value)? favoriteSection,
    TResult? Function(_FilterNewsEvent value)? filterNew,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_FilterSectionEvent value)? filterSection,
    TResult Function(_FavoriteSectionEvent value)? favoriteSection,
    TResult Function(_FilterNewsEvent value)? filterNew,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopStoriesEventCopyWith<$Res> {
  factory $TopStoriesEventCopyWith(
          TopStoriesEvent value, $Res Function(TopStoriesEvent) then) =
      _$TopStoriesEventCopyWithImpl<$Res, TopStoriesEvent>;
}

/// @nodoc
class _$TopStoriesEventCopyWithImpl<$Res, $Val extends TopStoriesEvent>
    implements $TopStoriesEventCopyWith<$Res> {
  _$TopStoriesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialEventImplCopyWith<$Res> {
  factory _$$InitialEventImplCopyWith(
          _$InitialEventImpl value, $Res Function(_$InitialEventImpl) then) =
      __$$InitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$TopStoriesEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialEventImpl implements _InitialEvent {
  const _$InitialEventImpl();

  @override
  String toString() {
    return 'TopStoriesEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String section) filterSection,
    required TResult Function(String section, int favorite) favoriteSection,
    required TResult Function(bool showNew) filterNew,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String section)? filterSection,
    TResult? Function(String section, int favorite)? favoriteSection,
    TResult? Function(bool showNew)? filterNew,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String section)? filterSection,
    TResult Function(String section, int favorite)? favoriteSection,
    TResult Function(bool showNew)? filterNew,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_FilterSectionEvent value) filterSection,
    required TResult Function(_FavoriteSectionEvent value) favoriteSection,
    required TResult Function(_FilterNewsEvent value) filterNew,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_FilterSectionEvent value)? filterSection,
    TResult? Function(_FavoriteSectionEvent value)? favoriteSection,
    TResult? Function(_FilterNewsEvent value)? filterNew,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_FilterSectionEvent value)? filterSection,
    TResult Function(_FavoriteSectionEvent value)? favoriteSection,
    TResult Function(_FilterNewsEvent value)? filterNew,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements TopStoriesEvent {
  const factory _InitialEvent() = _$InitialEventImpl;
}

/// @nodoc
abstract class _$$FilterSectionEventImplCopyWith<$Res> {
  factory _$$FilterSectionEventImplCopyWith(_$FilterSectionEventImpl value,
          $Res Function(_$FilterSectionEventImpl) then) =
      __$$FilterSectionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String section});
}

/// @nodoc
class __$$FilterSectionEventImplCopyWithImpl<$Res>
    extends _$TopStoriesEventCopyWithImpl<$Res, _$FilterSectionEventImpl>
    implements _$$FilterSectionEventImplCopyWith<$Res> {
  __$$FilterSectionEventImplCopyWithImpl(_$FilterSectionEventImpl _value,
      $Res Function(_$FilterSectionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
  }) {
    return _then(_$FilterSectionEventImpl(
      null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterSectionEventImpl implements _FilterSectionEvent {
  const _$FilterSectionEventImpl(this.section);

  @override
  final String section;

  @override
  String toString() {
    return 'TopStoriesEvent.filterSection(section: $section)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterSectionEventImpl &&
            (identical(other.section, section) || other.section == section));
  }

  @override
  int get hashCode => Object.hash(runtimeType, section);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterSectionEventImplCopyWith<_$FilterSectionEventImpl> get copyWith =>
      __$$FilterSectionEventImplCopyWithImpl<_$FilterSectionEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String section) filterSection,
    required TResult Function(String section, int favorite) favoriteSection,
    required TResult Function(bool showNew) filterNew,
  }) {
    return filterSection(section);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String section)? filterSection,
    TResult? Function(String section, int favorite)? favoriteSection,
    TResult? Function(bool showNew)? filterNew,
  }) {
    return filterSection?.call(section);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String section)? filterSection,
    TResult Function(String section, int favorite)? favoriteSection,
    TResult Function(bool showNew)? filterNew,
    required TResult orElse(),
  }) {
    if (filterSection != null) {
      return filterSection(section);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_FilterSectionEvent value) filterSection,
    required TResult Function(_FavoriteSectionEvent value) favoriteSection,
    required TResult Function(_FilterNewsEvent value) filterNew,
  }) {
    return filterSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_FilterSectionEvent value)? filterSection,
    TResult? Function(_FavoriteSectionEvent value)? favoriteSection,
    TResult? Function(_FilterNewsEvent value)? filterNew,
  }) {
    return filterSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_FilterSectionEvent value)? filterSection,
    TResult Function(_FavoriteSectionEvent value)? favoriteSection,
    TResult Function(_FilterNewsEvent value)? filterNew,
    required TResult orElse(),
  }) {
    if (filterSection != null) {
      return filterSection(this);
    }
    return orElse();
  }
}

abstract class _FilterSectionEvent implements TopStoriesEvent {
  const factory _FilterSectionEvent(final String section) =
      _$FilterSectionEventImpl;

  String get section;
  @JsonKey(ignore: true)
  _$$FilterSectionEventImplCopyWith<_$FilterSectionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FavoriteSectionEventImplCopyWith<$Res> {
  factory _$$FavoriteSectionEventImplCopyWith(_$FavoriteSectionEventImpl value,
          $Res Function(_$FavoriteSectionEventImpl) then) =
      __$$FavoriteSectionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String section, int favorite});
}

/// @nodoc
class __$$FavoriteSectionEventImplCopyWithImpl<$Res>
    extends _$TopStoriesEventCopyWithImpl<$Res, _$FavoriteSectionEventImpl>
    implements _$$FavoriteSectionEventImplCopyWith<$Res> {
  __$$FavoriteSectionEventImplCopyWithImpl(_$FavoriteSectionEventImpl _value,
      $Res Function(_$FavoriteSectionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = null,
    Object? favorite = null,
  }) {
    return _then(_$FavoriteSectionEventImpl(
      null == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as String,
      null == favorite
          ? _value.favorite
          : favorite // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$FavoriteSectionEventImpl implements _FavoriteSectionEvent {
  const _$FavoriteSectionEventImpl(this.section, this.favorite);

  @override
  final String section;
  @override
  final int favorite;

  @override
  String toString() {
    return 'TopStoriesEvent.favoriteSection(section: $section, favorite: $favorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FavoriteSectionEventImpl &&
            (identical(other.section, section) || other.section == section) &&
            (identical(other.favorite, favorite) ||
                other.favorite == favorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, section, favorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FavoriteSectionEventImplCopyWith<_$FavoriteSectionEventImpl>
      get copyWith =>
          __$$FavoriteSectionEventImplCopyWithImpl<_$FavoriteSectionEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String section) filterSection,
    required TResult Function(String section, int favorite) favoriteSection,
    required TResult Function(bool showNew) filterNew,
  }) {
    return favoriteSection(section, favorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String section)? filterSection,
    TResult? Function(String section, int favorite)? favoriteSection,
    TResult? Function(bool showNew)? filterNew,
  }) {
    return favoriteSection?.call(section, favorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String section)? filterSection,
    TResult Function(String section, int favorite)? favoriteSection,
    TResult Function(bool showNew)? filterNew,
    required TResult orElse(),
  }) {
    if (favoriteSection != null) {
      return favoriteSection(section, favorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_FilterSectionEvent value) filterSection,
    required TResult Function(_FavoriteSectionEvent value) favoriteSection,
    required TResult Function(_FilterNewsEvent value) filterNew,
  }) {
    return favoriteSection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_FilterSectionEvent value)? filterSection,
    TResult? Function(_FavoriteSectionEvent value)? favoriteSection,
    TResult? Function(_FilterNewsEvent value)? filterNew,
  }) {
    return favoriteSection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_FilterSectionEvent value)? filterSection,
    TResult Function(_FavoriteSectionEvent value)? favoriteSection,
    TResult Function(_FilterNewsEvent value)? filterNew,
    required TResult orElse(),
  }) {
    if (favoriteSection != null) {
      return favoriteSection(this);
    }
    return orElse();
  }
}

abstract class _FavoriteSectionEvent implements TopStoriesEvent {
  const factory _FavoriteSectionEvent(
      final String section, final int favorite) = _$FavoriteSectionEventImpl;

  String get section;
  int get favorite;
  @JsonKey(ignore: true)
  _$$FavoriteSectionEventImplCopyWith<_$FavoriteSectionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterNewsEventImplCopyWith<$Res> {
  factory _$$FilterNewsEventImplCopyWith(_$FilterNewsEventImpl value,
          $Res Function(_$FilterNewsEventImpl) then) =
      __$$FilterNewsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool showNew});
}

/// @nodoc
class __$$FilterNewsEventImplCopyWithImpl<$Res>
    extends _$TopStoriesEventCopyWithImpl<$Res, _$FilterNewsEventImpl>
    implements _$$FilterNewsEventImplCopyWith<$Res> {
  __$$FilterNewsEventImplCopyWithImpl(
      _$FilterNewsEventImpl _value, $Res Function(_$FilterNewsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showNew = null,
  }) {
    return _then(_$FilterNewsEventImpl(
      null == showNew
          ? _value.showNew
          : showNew // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FilterNewsEventImpl implements _FilterNewsEvent {
  const _$FilterNewsEventImpl(this.showNew);

  @override
  final bool showNew;

  @override
  String toString() {
    return 'TopStoriesEvent.filterNew(showNew: $showNew)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterNewsEventImpl &&
            (identical(other.showNew, showNew) || other.showNew == showNew));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showNew);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterNewsEventImplCopyWith<_$FilterNewsEventImpl> get copyWith =>
      __$$FilterNewsEventImplCopyWithImpl<_$FilterNewsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(String section) filterSection,
    required TResult Function(String section, int favorite) favoriteSection,
    required TResult Function(bool showNew) filterNew,
  }) {
    return filterNew(showNew);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(String section)? filterSection,
    TResult? Function(String section, int favorite)? favoriteSection,
    TResult? Function(bool showNew)? filterNew,
  }) {
    return filterNew?.call(showNew);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(String section)? filterSection,
    TResult Function(String section, int favorite)? favoriteSection,
    TResult Function(bool showNew)? filterNew,
    required TResult orElse(),
  }) {
    if (filterNew != null) {
      return filterNew(showNew);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_FilterSectionEvent value) filterSection,
    required TResult Function(_FavoriteSectionEvent value) favoriteSection,
    required TResult Function(_FilterNewsEvent value) filterNew,
  }) {
    return filterNew(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_FilterSectionEvent value)? filterSection,
    TResult? Function(_FavoriteSectionEvent value)? favoriteSection,
    TResult? Function(_FilterNewsEvent value)? filterNew,
  }) {
    return filterNew?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_FilterSectionEvent value)? filterSection,
    TResult Function(_FavoriteSectionEvent value)? favoriteSection,
    TResult Function(_FilterNewsEvent value)? filterNew,
    required TResult orElse(),
  }) {
    if (filterNew != null) {
      return filterNew(this);
    }
    return orElse();
  }
}

abstract class _FilterNewsEvent implements TopStoriesEvent {
  const factory _FilterNewsEvent(final bool showNew) = _$FilterNewsEventImpl;

  bool get showNew;
  @JsonKey(ignore: true)
  _$$FilterNewsEventImplCopyWith<_$FilterNewsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TopStoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopStoriesStateCopyWith<$Res> {
  factory $TopStoriesStateCopyWith(
          TopStoriesState value, $Res Function(TopStoriesState) then) =
      _$TopStoriesStateCopyWithImpl<$Res, TopStoriesState>;
}

/// @nodoc
class _$TopStoriesStateCopyWithImpl<$Res, $Val extends TopStoriesState>
    implements $TopStoriesStateCopyWith<$Res> {
  _$TopStoriesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TopStoriesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'TopStoriesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TopStoriesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$TopStoriesStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingStateImpl implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString() {
    return 'TopStoriesState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements TopStoriesState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$DataStateImplCopyWith<$Res> {
  factory _$$DataStateImplCopyWith(
          _$DataStateImpl value, $Res Function(_$DataStateImpl) then) =
      __$$DataStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DataStateImplCopyWithImpl<$Res>
    extends _$TopStoriesStateCopyWithImpl<$Res, _$DataStateImpl>
    implements _$$DataStateImplCopyWith<$Res> {
  __$$DataStateImplCopyWithImpl(
      _$DataStateImpl _value, $Res Function(_$DataStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DataStateImpl implements _DataState {
  const _$DataStateImpl();

  @override
  String toString() {
    return 'TopStoriesState.data()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DataStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() data,
  }) {
    return data();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? data,
  }) {
    return data?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadingState value) loading,
    required TResult Function(_DataState value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadingState value)? loading,
    TResult? Function(_DataState value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadingState value)? loading,
    TResult Function(_DataState value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _DataState implements TopStoriesState {
  const factory _DataState() = _$DataStateImpl;
}
