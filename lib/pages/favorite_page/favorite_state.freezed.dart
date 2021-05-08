// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'favorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteStateTearOff {
  const _$FavoriteStateTearOff();

  FavoriteStateData call(List<UserModel> userModels) {
    return FavoriteStateData(
      userModels,
    );
  }

  FavoriteStateLoading loading() {
    return const FavoriteStateLoading();
  }

  FavoriteStateError error(dynamic error) {
    return FavoriteStateError(
      error,
    );
  }
}

/// @nodoc
const $FavoriteState = _$FavoriteStateTearOff();

/// @nodoc
mixin _$FavoriteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> userModels) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> userModels)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FavoriteStateData value) $default, {
    required TResult Function(FavoriteStateLoading value) loading,
    required TResult Function(FavoriteStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FavoriteStateData value)? $default, {
    TResult Function(FavoriteStateLoading value)? loading,
    TResult Function(FavoriteStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateCopyWith<$Res> {
  factory $FavoriteStateCopyWith(
          FavoriteState value, $Res Function(FavoriteState) then) =
      _$FavoriteStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateCopyWith<$Res> {
  _$FavoriteStateCopyWithImpl(this._value, this._then);

  final FavoriteState _value;
  // ignore: unused_field
  final $Res Function(FavoriteState) _then;
}

/// @nodoc
abstract class $FavoriteStateDataCopyWith<$Res> {
  factory $FavoriteStateDataCopyWith(
          FavoriteStateData value, $Res Function(FavoriteStateData) then) =
      _$FavoriteStateDataCopyWithImpl<$Res>;
  $Res call({List<UserModel> userModels});
}

/// @nodoc
class _$FavoriteStateDataCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateDataCopyWith<$Res> {
  _$FavoriteStateDataCopyWithImpl(
      FavoriteStateData _value, $Res Function(FavoriteStateData) _then)
      : super(_value, (v) => _then(v as FavoriteStateData));

  @override
  FavoriteStateData get _value => super._value as FavoriteStateData;

  @override
  $Res call({
    Object? userModels = freezed,
  }) {
    return _then(FavoriteStateData(
      userModels == freezed
          ? _value.userModels
          : userModels // ignore: cast_nullable_to_non_nullable
              as List<UserModel>,
    ));
  }
}

/// @nodoc

class _$FavoriteStateData implements FavoriteStateData {
  const _$FavoriteStateData(this.userModels);

  @override
  final List<UserModel> userModels;

  @override
  String toString() {
    return 'FavoriteState(userModels: $userModels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavoriteStateData &&
            (identical(other.userModels, userModels) ||
                const DeepCollectionEquality()
                    .equals(other.userModels, userModels)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userModels);

  @JsonKey(ignore: true)
  @override
  $FavoriteStateDataCopyWith<FavoriteStateData> get copyWith =>
      _$FavoriteStateDataCopyWithImpl<FavoriteStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> userModels) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return $default(userModels);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> userModels)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(userModels);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FavoriteStateData value) $default, {
    required TResult Function(FavoriteStateLoading value) loading,
    required TResult Function(FavoriteStateError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FavoriteStateData value)? $default, {
    TResult Function(FavoriteStateLoading value)? loading,
    TResult Function(FavoriteStateError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class FavoriteStateData implements FavoriteState {
  const factory FavoriteStateData(List<UserModel> userModels) =
      _$FavoriteStateData;

  List<UserModel> get userModels => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteStateDataCopyWith<FavoriteStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteStateLoadingCopyWith<$Res> {
  factory $FavoriteStateLoadingCopyWith(FavoriteStateLoading value,
          $Res Function(FavoriteStateLoading) then) =
      _$FavoriteStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteStateLoadingCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateLoadingCopyWith<$Res> {
  _$FavoriteStateLoadingCopyWithImpl(
      FavoriteStateLoading _value, $Res Function(FavoriteStateLoading) _then)
      : super(_value, (v) => _then(v as FavoriteStateLoading));

  @override
  FavoriteStateLoading get _value => super._value as FavoriteStateLoading;
}

/// @nodoc

class _$FavoriteStateLoading implements FavoriteStateLoading {
  const _$FavoriteStateLoading();

  @override
  String toString() {
    return 'FavoriteState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FavoriteStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> userModels) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> userModels)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FavoriteStateData value) $default, {
    required TResult Function(FavoriteStateLoading value) loading,
    required TResult Function(FavoriteStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FavoriteStateData value)? $default, {
    TResult Function(FavoriteStateLoading value)? loading,
    TResult Function(FavoriteStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class FavoriteStateLoading implements FavoriteState {
  const factory FavoriteStateLoading() = _$FavoriteStateLoading;
}

/// @nodoc
abstract class $FavoriteStateErrorCopyWith<$Res> {
  factory $FavoriteStateErrorCopyWith(
          FavoriteStateError value, $Res Function(FavoriteStateError) then) =
      _$FavoriteStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class _$FavoriteStateErrorCopyWithImpl<$Res>
    extends _$FavoriteStateCopyWithImpl<$Res>
    implements $FavoriteStateErrorCopyWith<$Res> {
  _$FavoriteStateErrorCopyWithImpl(
      FavoriteStateError _value, $Res Function(FavoriteStateError) _then)
      : super(_value, (v) => _then(v as FavoriteStateError));

  @override
  FavoriteStateError get _value => super._value as FavoriteStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(FavoriteStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$FavoriteStateError implements FavoriteStateError {
  const _$FavoriteStateError(this.error);

  @override
  final dynamic error;

  @override
  String toString() {
    return 'FavoriteState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FavoriteStateError &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $FavoriteStateErrorCopyWith<FavoriteStateError> get copyWith =>
      _$FavoriteStateErrorCopyWithImpl<FavoriteStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<UserModel> userModels) $default, {
    required TResult Function() loading,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<UserModel> userModels)? $default, {
    TResult Function()? loading,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FavoriteStateData value) $default, {
    required TResult Function(FavoriteStateLoading value) loading,
    required TResult Function(FavoriteStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(FavoriteStateData value)? $default, {
    TResult Function(FavoriteStateLoading value)? loading,
    TResult Function(FavoriteStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class FavoriteStateError implements FavoriteState {
  const factory FavoriteStateError(dynamic error) = _$FavoriteStateError;

  dynamic get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FavoriteStateErrorCopyWith<FavoriteStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
