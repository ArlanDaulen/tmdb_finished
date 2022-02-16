// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MoviesEventTearOff {
  const _$MoviesEventTearOff();

  MoviesLoadingEvent load() {
    return const MoviesLoadingEvent();
  }

  MoviesLoadingMoreEvent loadMore() {
    return const MoviesLoadingMoreEvent();
  }
}

/// @nodoc
const $MoviesEvent = _$MoviesEventTearOff();

/// @nodoc
mixin _$MoviesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesLoadingEvent value) load,
    required TResult Function(MoviesLoadingMoreEvent value) loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesLoadingEvent value)? load,
    TResult Function(MoviesLoadingMoreEvent value)? loadMore,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoadingEvent value)? load,
    TResult Function(MoviesLoadingMoreEvent value)? loadMore,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoviesEventCopyWith<$Res> {
  factory $MoviesEventCopyWith(
          MoviesEvent value, $Res Function(MoviesEvent) then) =
      _$MoviesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesEventCopyWithImpl<$Res> implements $MoviesEventCopyWith<$Res> {
  _$MoviesEventCopyWithImpl(this._value, this._then);

  final MoviesEvent _value;
  // ignore: unused_field
  final $Res Function(MoviesEvent) _then;
}

/// @nodoc
abstract class $MoviesLoadingEventCopyWith<$Res> {
  factory $MoviesLoadingEventCopyWith(
          MoviesLoadingEvent value, $Res Function(MoviesLoadingEvent) then) =
      _$MoviesLoadingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesLoadingEventCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res>
    implements $MoviesLoadingEventCopyWith<$Res> {
  _$MoviesLoadingEventCopyWithImpl(
      MoviesLoadingEvent _value, $Res Function(MoviesLoadingEvent) _then)
      : super(_value, (v) => _then(v as MoviesLoadingEvent));

  @override
  MoviesLoadingEvent get _value => super._value as MoviesLoadingEvent;
}

/// @nodoc

class _$MoviesLoadingEvent implements MoviesLoadingEvent {
  const _$MoviesLoadingEvent();

  @override
  String toString() {
    return 'MoviesEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MoviesLoadingEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesLoadingEvent value) load,
    required TResult Function(MoviesLoadingMoreEvent value) loadMore,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesLoadingEvent value)? load,
    TResult Function(MoviesLoadingMoreEvent value)? loadMore,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoadingEvent value)? load,
    TResult Function(MoviesLoadingMoreEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class MoviesLoadingEvent implements MoviesEvent {
  const factory MoviesLoadingEvent() = _$MoviesLoadingEvent;
}

/// @nodoc
abstract class $MoviesLoadingMoreEventCopyWith<$Res> {
  factory $MoviesLoadingMoreEventCopyWith(MoviesLoadingMoreEvent value,
          $Res Function(MoviesLoadingMoreEvent) then) =
      _$MoviesLoadingMoreEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MoviesLoadingMoreEventCopyWithImpl<$Res>
    extends _$MoviesEventCopyWithImpl<$Res>
    implements $MoviesLoadingMoreEventCopyWith<$Res> {
  _$MoviesLoadingMoreEventCopyWithImpl(MoviesLoadingMoreEvent _value,
      $Res Function(MoviesLoadingMoreEvent) _then)
      : super(_value, (v) => _then(v as MoviesLoadingMoreEvent));

  @override
  MoviesLoadingMoreEvent get _value => super._value as MoviesLoadingMoreEvent;
}

/// @nodoc

class _$MoviesLoadingMoreEvent implements MoviesLoadingMoreEvent {
  const _$MoviesLoadingMoreEvent();

  @override
  String toString() {
    return 'MoviesEvent.loadMore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is MoviesLoadingMoreEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() loadMore,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MoviesLoadingEvent value) load,
    required TResult Function(MoviesLoadingMoreEvent value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MoviesLoadingEvent value)? load,
    TResult Function(MoviesLoadingMoreEvent value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MoviesLoadingEvent value)? load,
    TResult Function(MoviesLoadingMoreEvent value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class MoviesLoadingMoreEvent implements MoviesEvent {
  const factory MoviesLoadingMoreEvent() = _$MoviesLoadingMoreEvent;
}
