// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'movies_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MovieStateTearOff {
  const _$MovieStateTearOff();

  Init init() {
    return const Init();
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded(PopularModel changes) {
    return Loaded(
      changes,
    );
  }

  OnOffline onOffline(Box<Results> savedChanges) {
    return OnOffline(
      savedChanges,
    );
  }
}

/// @nodoc
const $MovieState = _$MovieStateTearOff();

/// @nodoc
mixin _$MovieState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(PopularModel changes) loaded,
    required TResult Function(Box<Results> savedChanges) onOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(PopularModel changes)? loaded,
    TResult Function(Box<Results> savedChanges)? onOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(PopularModel changes)? loaded,
    TResult Function(Box<Results> savedChanges)? onOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(OnOffline value) onOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(OnOffline value)? onOffline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(OnOffline value)? onOffline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieStateCopyWith<$Res> {
  factory $MovieStateCopyWith(
          MovieState value, $Res Function(MovieState) then) =
      _$MovieStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MovieStateCopyWithImpl<$Res> implements $MovieStateCopyWith<$Res> {
  _$MovieStateCopyWithImpl(this._value, this._then);

  final MovieState _value;
  // ignore: unused_field
  final $Res Function(MovieState) _then;
}

/// @nodoc
abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

/// @nodoc

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'MovieState.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(PopularModel changes) loaded,
    required TResult Function(Box<Results> savedChanges) onOffline,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(PopularModel changes)? loaded,
    TResult Function(Box<Results> savedChanges)? onOffline,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(PopularModel changes)? loaded,
    TResult Function(Box<Results> savedChanges)? onOffline,
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
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(OnOffline value) onOffline,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(OnOffline value)? onOffline,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(OnOffline value)? onOffline,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements MovieState {
  const factory Init() = _$Init;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'MovieState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(PopularModel changes) loaded,
    required TResult Function(Box<Results> savedChanges) onOffline,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(PopularModel changes)? loaded,
    TResult Function(Box<Results> savedChanges)? onOffline,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(PopularModel changes)? loaded,
    TResult Function(Box<Results> savedChanges)? onOffline,
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
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(OnOffline value) onOffline,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(OnOffline value)? onOffline,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(OnOffline value)? onOffline,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements MovieState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({PopularModel changes});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? changes = freezed,
  }) {
    return _then(Loaded(
      changes == freezed
          ? _value.changes
          : changes // ignore: cast_nullable_to_non_nullable
              as PopularModel,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(this.changes);

  @override
  final PopularModel changes;

  @override
  String toString() {
    return 'MovieState.loaded(changes: $changes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.changes, changes) ||
                const DeepCollectionEquality().equals(other.changes, changes)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(changes);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(PopularModel changes) loaded,
    required TResult Function(Box<Results> savedChanges) onOffline,
  }) {
    return loaded(changes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(PopularModel changes)? loaded,
    TResult Function(Box<Results> savedChanges)? onOffline,
  }) {
    return loaded?.call(changes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(PopularModel changes)? loaded,
    TResult Function(Box<Results> savedChanges)? onOffline,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(changes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(OnOffline value) onOffline,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(OnOffline value)? onOffline,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(OnOffline value)? onOffline,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements MovieState {
  const factory Loaded(PopularModel changes) = _$Loaded;

  PopularModel get changes => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnOfflineCopyWith<$Res> {
  factory $OnOfflineCopyWith(OnOffline value, $Res Function(OnOffline) then) =
      _$OnOfflineCopyWithImpl<$Res>;
  $Res call({Box<Results> savedChanges});
}

/// @nodoc
class _$OnOfflineCopyWithImpl<$Res> extends _$MovieStateCopyWithImpl<$Res>
    implements $OnOfflineCopyWith<$Res> {
  _$OnOfflineCopyWithImpl(OnOffline _value, $Res Function(OnOffline) _then)
      : super(_value, (v) => _then(v as OnOffline));

  @override
  OnOffline get _value => super._value as OnOffline;

  @override
  $Res call({
    Object? savedChanges = freezed,
  }) {
    return _then(OnOffline(
      savedChanges == freezed
          ? _value.savedChanges
          : savedChanges // ignore: cast_nullable_to_non_nullable
              as Box<Results>,
    ));
  }
}

/// @nodoc

class _$OnOffline implements OnOffline {
  const _$OnOffline(this.savedChanges);

  @override
  final Box<Results> savedChanges;

  @override
  String toString() {
    return 'MovieState.onOffline(savedChanges: $savedChanges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnOffline &&
            (identical(other.savedChanges, savedChanges) ||
                const DeepCollectionEquality()
                    .equals(other.savedChanges, savedChanges)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(savedChanges);

  @JsonKey(ignore: true)
  @override
  $OnOfflineCopyWith<OnOffline> get copyWith =>
      _$OnOfflineCopyWithImpl<OnOffline>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function() loading,
    required TResult Function(PopularModel changes) loaded,
    required TResult Function(Box<Results> savedChanges) onOffline,
  }) {
    return onOffline(savedChanges);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(PopularModel changes)? loaded,
    TResult Function(Box<Results> savedChanges)? onOffline,
  }) {
    return onOffline?.call(savedChanges);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function()? loading,
    TResult Function(PopularModel changes)? loaded,
    TResult Function(Box<Results> savedChanges)? onOffline,
    required TResult orElse(),
  }) {
    if (onOffline != null) {
      return onOffline(savedChanges);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Init value) init,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(OnOffline value) onOffline,
  }) {
    return onOffline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(OnOffline value)? onOffline,
  }) {
    return onOffline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Init value)? init,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(OnOffline value)? onOffline,
    required TResult orElse(),
  }) {
    if (onOffline != null) {
      return onOffline(this);
    }
    return orElse();
  }
}

abstract class OnOffline implements MovieState {
  const factory OnOffline(Box<Results> savedChanges) = _$OnOffline;

  Box<Results> get savedChanges => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnOfflineCopyWith<OnOffline> get copyWith =>
      throw _privateConstructorUsedError;
}
