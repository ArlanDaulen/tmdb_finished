// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movie_details_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieDetailsEventTearOff {
  const _$MovieDetailsEventTearOff();

  MoviDetailsLoadEvent load(int movieId) {
    return MoviDetailsLoadEvent(
      movieId,
    );
  }
}

/// @nodoc
const $MovieDetailsEvent = _$MovieDetailsEventTearOff();

/// @nodoc
mixin _$MovieDetailsEvent {
  int get movieId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int movieId)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviDetailsLoadEvent value) load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviDetailsLoadEvent value)? load,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviDetailsLoadEvent value)? load,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieDetailsEventCopyWith<MovieDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieDetailsEventCopyWith<$Res> {
  factory $MovieDetailsEventCopyWith(
          MovieDetailsEvent value, $Res Function(MovieDetailsEvent) then) =
      _$MovieDetailsEventCopyWithImpl<$Res>;
  $Res call({int movieId});
}

/// @nodoc
class _$MovieDetailsEventCopyWithImpl<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  _$MovieDetailsEventCopyWithImpl(this._value, this._then);

  final MovieDetailsEvent _value;
  // ignore: unused_field
  final $Res Function(MovieDetailsEvent) _then;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(_value.copyWith(
      movieId: movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $MoviDetailsLoadEventCopyWith<$Res>
    implements $MovieDetailsEventCopyWith<$Res> {
  factory $MoviDetailsLoadEventCopyWith(MoviDetailsLoadEvent value,
          $Res Function(MoviDetailsLoadEvent) then) =
      _$MoviDetailsLoadEventCopyWithImpl<$Res>;
  @override
  $Res call({int movieId});
}

/// @nodoc
class _$MoviDetailsLoadEventCopyWithImpl<$Res>
    extends _$MovieDetailsEventCopyWithImpl<$Res>
    implements $MoviDetailsLoadEventCopyWith<$Res> {
  _$MoviDetailsLoadEventCopyWithImpl(
      MoviDetailsLoadEvent _value, $Res Function(MoviDetailsLoadEvent) _then)
      : super(_value, (v) => _then(v as MoviDetailsLoadEvent));

  @override
  MoviDetailsLoadEvent get _value => super._value as MoviDetailsLoadEvent;

  @override
  $Res call({
    Object? movieId = freezed,
  }) {
    return _then(MoviDetailsLoadEvent(
      movieId == freezed
          ? _value.movieId
          : movieId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MoviDetailsLoadEvent implements MoviDetailsLoadEvent {
  const _$MoviDetailsLoadEvent(this.movieId);

  @override
  final int movieId;

  @override
  String toString() {
    return 'MovieDetailsEvent.load(movieId: $movieId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is MoviDetailsLoadEvent &&
            (identical(other.movieId, movieId) ||
                const DeepCollectionEquality().equals(other.movieId, movieId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(movieId);

  @JsonKey(ignore: true)
  @override
  $MoviDetailsLoadEventCopyWith<MoviDetailsLoadEvent> get copyWith =>
      _$MoviDetailsLoadEventCopyWithImpl<MoviDetailsLoadEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int movieId) load,
  }) {
    return load(movieId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int movieId)? load,
  }) {
    return load?.call(movieId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int movieId)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(movieId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviDetailsLoadEvent value) load,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviDetailsLoadEvent value)? load,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviDetailsLoadEvent value)? load,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class MoviDetailsLoadEvent implements MovieDetailsEvent {
  const factory MoviDetailsLoadEvent(int movieId) = _$MoviDetailsLoadEvent;

  @override
  int get movieId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $MoviDetailsLoadEventCopyWith<MoviDetailsLoadEvent> get copyWith =>
      throw _privateConstructorUsedError;
}
