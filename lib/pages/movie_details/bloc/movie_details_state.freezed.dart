// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDetailsStateTearOff {
  const _$MovieDetailsStateTearOff();

  MovieDetailsLoadingState loading() {
    return const MovieDetailsLoadingState();
  }

  MovieDetailsLoadedState loaded(MovieDetailsModel details) {
    return MovieDetailsLoadedState(
      details,
    );
  }

  MovieDetailsErrorState error() {
    return const MovieDetailsErrorState();
  }
}

/// @nodoc
const $MovieDetailsState = _$MovieDetailsStateTearOff();

/// @nodoc
mixin _$MovieDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetailsModel details) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetailsModel details)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetailsModel details)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailsLoadingState value) loading,
    required TResult Function(MovieDetailsLoadedState value) loaded,
    required TResult Function(MovieDetailsErrorState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieDetailsLoadingState value)? loading,
    TResult Function(MovieDetailsLoadedState value)? loaded,
    TResult Function(MovieDetailsErrorState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailsLoadingState value)? loading,
    TResult Function(MovieDetailsLoadedState value)? loaded,
    TResult Function(MovieDetailsErrorState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsStateCopyWith<$Res> {
  factory $MovieDetailsStateCopyWith(
          MovieDetailsState value, $Res Function(MovieDetailsState) then) =
      _$MovieDetailsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsStateCopyWith<$Res> {
  _$MovieDetailsStateCopyWithImpl(this._value, this._then);

  final MovieDetailsState _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsState) _then;
}

/// @nodoc
abstract class $MovieDetailsLoadingStateCopyWith<$Res> {
  factory $MovieDetailsLoadingStateCopyWith(MovieDetailsLoadingState value,
          $Res Function(MovieDetailsLoadingState) then) =
      _$MovieDetailsLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieDetailsLoadingStateCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsLoadingStateCopyWith<$Res> {
  _$MovieDetailsLoadingStateCopyWithImpl(MovieDetailsLoadingState _value,
      $Res Function(MovieDetailsLoadingState) _then)
      : super(_value, (v) => _then(v as MovieDetailsLoadingState));

  @override
  MovieDetailsLoadingState get _value =>
      super._value as MovieDetailsLoadingState;
}

/// @nodoc

class _$MovieDetailsLoadingState implements MovieDetailsLoadingState {
  const _$MovieDetailsLoadingState();

  @override
  String toString() {
    return 'MovieDetailsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MovieDetailsLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetailsModel details) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetailsModel details)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetailsModel details)? loaded,
    TResult Function()? error,
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
    required TResult Function(MovieDetailsLoadingState value) loading,
    required TResult Function(MovieDetailsLoadedState value) loaded,
    required TResult Function(MovieDetailsErrorState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieDetailsLoadingState value)? loading,
    TResult Function(MovieDetailsLoadedState value)? loaded,
    TResult Function(MovieDetailsErrorState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailsLoadingState value)? loading,
    TResult Function(MovieDetailsLoadedState value)? loaded,
    TResult Function(MovieDetailsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MovieDetailsLoadingState implements MovieDetailsState {
  const factory MovieDetailsLoadingState() = _$MovieDetailsLoadingState;
}

/// @nodoc
abstract class $MovieDetailsLoadedStateCopyWith<$Res> {
  factory $MovieDetailsLoadedStateCopyWith(MovieDetailsLoadedState value,
          $Res Function(MovieDetailsLoadedState) then) =
      _$MovieDetailsLoadedStateCopyWithImpl<$Res>;
  $Res call({MovieDetailsModel details});
}

/// @nodoc
class _$MovieDetailsLoadedStateCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsLoadedStateCopyWith<$Res> {
  _$MovieDetailsLoadedStateCopyWithImpl(MovieDetailsLoadedState _value,
      $Res Function(MovieDetailsLoadedState) _then)
      : super(_value, (v) => _then(v as MovieDetailsLoadedState));

  @override
  MovieDetailsLoadedState get _value => super._value as MovieDetailsLoadedState;

  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(MovieDetailsLoadedState(
      details == freezed
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as MovieDetailsModel,
    ));
  }
}

/// @nodoc

class _$MovieDetailsLoadedState implements MovieDetailsLoadedState {
  const _$MovieDetailsLoadedState(this.details);

  @override
  final MovieDetailsModel details;

  @override
  String toString() {
    return 'MovieDetailsState.loaded(details: $details)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MovieDetailsLoadedState &&
            (identical(other.details, details) ||
                const DeepCollectionEquality().equals(other.details, details)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(details);

  @JsonKey(ignore: true)
  @override
  $MovieDetailsLoadedStateCopyWith<MovieDetailsLoadedState> get copyWith =>
      _$MovieDetailsLoadedStateCopyWithImpl<MovieDetailsLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetailsModel details) loaded,
    required TResult Function() error,
  }) {
    return loaded(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetailsModel details)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetailsModel details)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailsLoadingState value) loading,
    required TResult Function(MovieDetailsLoadedState value) loaded,
    required TResult Function(MovieDetailsErrorState value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieDetailsLoadingState value)? loading,
    TResult Function(MovieDetailsLoadedState value)? loaded,
    TResult Function(MovieDetailsErrorState value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailsLoadingState value)? loading,
    TResult Function(MovieDetailsLoadedState value)? loaded,
    TResult Function(MovieDetailsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class MovieDetailsLoadedState implements MovieDetailsState {
  const factory MovieDetailsLoadedState(MovieDetailsModel details) =
      _$MovieDetailsLoadedState;

  MovieDetailsModel get details => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieDetailsLoadedStateCopyWith<MovieDetailsLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsErrorStateCopyWith<$Res> {
  factory $MovieDetailsErrorStateCopyWith(MovieDetailsErrorState value,
          $Res Function(MovieDetailsErrorState) then) =
      _$MovieDetailsErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieDetailsErrorStateCopyWithImpl<$Res>
    extends _$MovieDetailsStateCopyWithImpl<$Res>
    implements $MovieDetailsErrorStateCopyWith<$Res> {
  _$MovieDetailsErrorStateCopyWithImpl(MovieDetailsErrorState _value,
      $Res Function(MovieDetailsErrorState) _then)
      : super(_value, (v) => _then(v as MovieDetailsErrorState));

  @override
  MovieDetailsErrorState get _value => super._value as MovieDetailsErrorState;
}

/// @nodoc

class _$MovieDetailsErrorState implements MovieDetailsErrorState {
  const _$MovieDetailsErrorState();

  @override
  String toString() {
    return 'MovieDetailsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MovieDetailsErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(MovieDetailsModel details) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetailsModel details)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(MovieDetailsModel details)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MovieDetailsLoadingState value) loading,
    required TResult Function(MovieDetailsLoadedState value) loaded,
    required TResult Function(MovieDetailsErrorState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MovieDetailsLoadingState value)? loading,
    TResult Function(MovieDetailsLoadedState value)? loaded,
    TResult Function(MovieDetailsErrorState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MovieDetailsLoadingState value)? loading,
    TResult Function(MovieDetailsLoadedState value)? loaded,
    TResult Function(MovieDetailsErrorState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MovieDetailsErrorState implements MovieDetailsState {
  const factory MovieDetailsErrorState() = _$MovieDetailsErrorState;
}
