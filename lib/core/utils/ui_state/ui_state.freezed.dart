// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ui_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UIState<L, R> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(L error) error,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(R data) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(L error)? error,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(R data)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(L error)? error,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(R data)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error<L, R> value) error,
    required TResult Function(Idle<L, R> value) idle,
    required TResult Function(Loading<L, R> value) loading,
    required TResult Function(Success<L, R> value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Idle<L, R> value)? idle,
    TResult Function(Loading<L, R> value)? loading,
    TResult Function(Success<L, R> value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Idle<L, R> value)? idle,
    TResult Function(Loading<L, R> value)? loading,
    TResult Function(Success<L, R> value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIStateCopyWith<L, R, $Res> {
  factory $UIStateCopyWith(
          UIState<L, R> value, $Res Function(UIState<L, R>) then) =
      _$UIStateCopyWithImpl<L, R, $Res>;
}

/// @nodoc
class _$UIStateCopyWithImpl<L, R, $Res>
    implements $UIStateCopyWith<L, R, $Res> {
  _$UIStateCopyWithImpl(this._value, this._then);

  final UIState<L, R> _value;
  // ignore: unused_field
  final $Res Function(UIState<L, R>) _then;
}

/// @nodoc
abstract class $ErrorCopyWith<L, R, $Res> {
  factory $ErrorCopyWith(Error<L, R> value, $Res Function(Error<L, R>) then) =
      _$ErrorCopyWithImpl<L, R, $Res>;
  $Res call({L error});
}

/// @nodoc
class _$ErrorCopyWithImpl<L, R, $Res> extends _$UIStateCopyWithImpl<L, R, $Res>
    implements $ErrorCopyWith<L, R, $Res> {
  _$ErrorCopyWithImpl(Error<L, R> _value, $Res Function(Error<L, R>) _then)
      : super(_value, (v) => _then(v as Error<L, R>));

  @override
  Error<L, R> get _value => super._value as Error<L, R>;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(Error<L, R>(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as L,
    ));
  }
}

/// @nodoc

class _$Error<L, R> implements Error<L, R> {
  const _$Error(this.error);

  @override
  final L error;

  @override
  String toString() {
    return 'UIState<$L, $R>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error<L, R> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<L, R, Error<L, R>> get copyWith =>
      _$ErrorCopyWithImpl<L, R, Error<L, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(L error) error,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(R data) success,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(L error)? error,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(R data)? success,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(L error)? error,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(R data)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error<L, R> value) error,
    required TResult Function(Idle<L, R> value) idle,
    required TResult Function(Loading<L, R> value) loading,
    required TResult Function(Success<L, R> value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Idle<L, R> value)? idle,
    TResult Function(Loading<L, R> value)? loading,
    TResult Function(Success<L, R> value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Idle<L, R> value)? idle,
    TResult Function(Loading<L, R> value)? loading,
    TResult Function(Success<L, R> value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<L, R> implements UIState<L, R> {
  const factory Error(final L error) = _$Error<L, R>;

  L get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<L, R, Error<L, R>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdleCopyWith<L, R, $Res> {
  factory $IdleCopyWith(Idle<L, R> value, $Res Function(Idle<L, R>) then) =
      _$IdleCopyWithImpl<L, R, $Res>;
}

/// @nodoc
class _$IdleCopyWithImpl<L, R, $Res> extends _$UIStateCopyWithImpl<L, R, $Res>
    implements $IdleCopyWith<L, R, $Res> {
  _$IdleCopyWithImpl(Idle<L, R> _value, $Res Function(Idle<L, R>) _then)
      : super(_value, (v) => _then(v as Idle<L, R>));

  @override
  Idle<L, R> get _value => super._value as Idle<L, R>;
}

/// @nodoc

class _$Idle<L, R> implements Idle<L, R> {
  const _$Idle();

  @override
  String toString() {
    return 'UIState<$L, $R>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Idle<L, R>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(L error) error,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(R data) success,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(L error)? error,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(R data)? success,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(L error)? error,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(R data)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error<L, R> value) error,
    required TResult Function(Idle<L, R> value) idle,
    required TResult Function(Loading<L, R> value) loading,
    required TResult Function(Success<L, R> value) success,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Idle<L, R> value)? idle,
    TResult Function(Loading<L, R> value)? loading,
    TResult Function(Success<L, R> value)? success,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Idle<L, R> value)? idle,
    TResult Function(Loading<L, R> value)? loading,
    TResult Function(Success<L, R> value)? success,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<L, R> implements UIState<L, R> {
  const factory Idle() = _$Idle<L, R>;
}

/// @nodoc
abstract class $LoadingCopyWith<L, R, $Res> {
  factory $LoadingCopyWith(
          Loading<L, R> value, $Res Function(Loading<L, R>) then) =
      _$LoadingCopyWithImpl<L, R, $Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<L, R, $Res>
    extends _$UIStateCopyWithImpl<L, R, $Res>
    implements $LoadingCopyWith<L, R, $Res> {
  _$LoadingCopyWithImpl(
      Loading<L, R> _value, $Res Function(Loading<L, R>) _then)
      : super(_value, (v) => _then(v as Loading<L, R>));

  @override
  Loading<L, R> get _value => super._value as Loading<L, R>;
}

/// @nodoc

class _$Loading<L, R> implements Loading<L, R> {
  const _$Loading();

  @override
  String toString() {
    return 'UIState<$L, $R>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading<L, R>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(L error) error,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(R data) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(L error)? error,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(R data)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(L error)? error,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(R data)? success,
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
    required TResult Function(Error<L, R> value) error,
    required TResult Function(Idle<L, R> value) idle,
    required TResult Function(Loading<L, R> value) loading,
    required TResult Function(Success<L, R> value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Idle<L, R> value)? idle,
    TResult Function(Loading<L, R> value)? loading,
    TResult Function(Success<L, R> value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Idle<L, R> value)? idle,
    TResult Function(Loading<L, R> value)? loading,
    TResult Function(Success<L, R> value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<L, R> implements UIState<L, R> {
  const factory Loading() = _$Loading<L, R>;
}

/// @nodoc
abstract class $SuccessCopyWith<L, R, $Res> {
  factory $SuccessCopyWith(
          Success<L, R> value, $Res Function(Success<L, R>) then) =
      _$SuccessCopyWithImpl<L, R, $Res>;
  $Res call({R data});
}

/// @nodoc
class _$SuccessCopyWithImpl<L, R, $Res>
    extends _$UIStateCopyWithImpl<L, R, $Res>
    implements $SuccessCopyWith<L, R, $Res> {
  _$SuccessCopyWithImpl(
      Success<L, R> _value, $Res Function(Success<L, R>) _then)
      : super(_value, (v) => _then(v as Success<L, R>));

  @override
  Success<L, R> get _value => super._value as Success<L, R>;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Success<L, R>(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as R,
    ));
  }
}

/// @nodoc

class _$Success<L, R> implements Success<L, R> {
  const _$Success(this.data);

  @override
  final R data;

  @override
  String toString() {
    return 'UIState<$L, $R>.success(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Success<L, R> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  $SuccessCopyWith<L, R, Success<L, R>> get copyWith =>
      _$SuccessCopyWithImpl<L, R, Success<L, R>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(L error) error,
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(R data) success,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(L error)? error,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(R data)? success,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(L error)? error,
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(R data)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Error<L, R> value) error,
    required TResult Function(Idle<L, R> value) idle,
    required TResult Function(Loading<L, R> value) loading,
    required TResult Function(Success<L, R> value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Idle<L, R> value)? idle,
    TResult Function(Loading<L, R> value)? loading,
    TResult Function(Success<L, R> value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Error<L, R> value)? error,
    TResult Function(Idle<L, R> value)? idle,
    TResult Function(Loading<L, R> value)? loading,
    TResult Function(Success<L, R> value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<L, R> implements UIState<L, R> {
  const factory Success(final R data) = _$Success<L, R>;

  R get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessCopyWith<L, R, Success<L, R>> get copyWith =>
      throw _privateConstructorUsedError;
}
