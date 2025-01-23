// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'async_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AsyncState<T, E extends Object?> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() loading,
    required TResult Function(E error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? loading,
    TResult? Function(E error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? loading,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncDataState<T, E> value) data,
    required TResult Function(AsyncLoadingState<T, E> value) loading,
    required TResult Function(AsyncErrorState<T, E> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncDataState<T, E> value)? data,
    TResult? Function(AsyncLoadingState<T, E> value)? loading,
    TResult? Function(AsyncErrorState<T, E> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataState<T, E> value)? data,
    TResult Function(AsyncLoadingState<T, E> value)? loading,
    TResult Function(AsyncErrorState<T, E> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AsyncStateCopyWith<T, E extends Object?, $Res> {
  factory $AsyncStateCopyWith(
          AsyncState<T, E> value, $Res Function(AsyncState<T, E>) then) =
      _$AsyncStateCopyWithImpl<T, E, $Res, AsyncState<T, E>>;
}

/// @nodoc
class _$AsyncStateCopyWithImpl<T, E extends Object?, $Res,
    $Val extends AsyncState<T, E>> implements $AsyncStateCopyWith<T, E, $Res> {
  _$AsyncStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AsyncDataStateImplCopyWith<T, E extends Object?, $Res> {
  factory _$$AsyncDataStateImplCopyWith(_$AsyncDataStateImpl<T, E> value,
          $Res Function(_$AsyncDataStateImpl<T, E>) then) =
      __$$AsyncDataStateImplCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AsyncDataStateImplCopyWithImpl<T, E extends Object?, $Res>
    extends _$AsyncStateCopyWithImpl<T, E, $Res, _$AsyncDataStateImpl<T, E>>
    implements _$$AsyncDataStateImplCopyWith<T, E, $Res> {
  __$$AsyncDataStateImplCopyWithImpl(_$AsyncDataStateImpl<T, E> _value,
      $Res Function(_$AsyncDataStateImpl<T, E>) _then)
      : super(_value, _then);

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AsyncDataStateImpl<T, E>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AsyncDataStateImpl<T, E extends Object?>
    implements AsyncDataState<T, E> {
  const _$AsyncDataStateImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AsyncState<$T, $E>.data(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncDataStateImpl<T, E> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncDataStateImplCopyWith<T, E, _$AsyncDataStateImpl<T, E>>
      get copyWith =>
          __$$AsyncDataStateImplCopyWithImpl<T, E, _$AsyncDataStateImpl<T, E>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() loading,
    required TResult Function(E error) error,
  }) {
    return data(this.data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? loading,
    TResult? Function(E error)? error,
  }) {
    return data?.call(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? loading,
    TResult Function(E error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AsyncDataState<T, E> value) data,
    required TResult Function(AsyncLoadingState<T, E> value) loading,
    required TResult Function(AsyncErrorState<T, E> value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncDataState<T, E> value)? data,
    TResult? Function(AsyncLoadingState<T, E> value)? loading,
    TResult? Function(AsyncErrorState<T, E> value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataState<T, E> value)? data,
    TResult Function(AsyncLoadingState<T, E> value)? loading,
    TResult Function(AsyncErrorState<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class AsyncDataState<T, E extends Object?>
    implements AsyncState<T, E> {
  const factory AsyncDataState(final T data) = _$AsyncDataStateImpl<T, E>;

  T get data;

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AsyncDataStateImplCopyWith<T, E, _$AsyncDataStateImpl<T, E>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AsyncLoadingStateImplCopyWith<T, E extends Object?, $Res> {
  factory _$$AsyncLoadingStateImplCopyWith(_$AsyncLoadingStateImpl<T, E> value,
          $Res Function(_$AsyncLoadingStateImpl<T, E>) then) =
      __$$AsyncLoadingStateImplCopyWithImpl<T, E, $Res>;
}

/// @nodoc
class __$$AsyncLoadingStateImplCopyWithImpl<T, E extends Object?, $Res>
    extends _$AsyncStateCopyWithImpl<T, E, $Res, _$AsyncLoadingStateImpl<T, E>>
    implements _$$AsyncLoadingStateImplCopyWith<T, E, $Res> {
  __$$AsyncLoadingStateImplCopyWithImpl(_$AsyncLoadingStateImpl<T, E> _value,
      $Res Function(_$AsyncLoadingStateImpl<T, E>) _then)
      : super(_value, _then);

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AsyncLoadingStateImpl<T, E extends Object?>
    implements AsyncLoadingState<T, E> {
  const _$AsyncLoadingStateImpl();

  @override
  String toString() {
    return 'AsyncState<$T, $E>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncLoadingStateImpl<T, E>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() loading,
    required TResult Function(E error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? loading,
    TResult? Function(E error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? loading,
    TResult Function(E error)? error,
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
    required TResult Function(AsyncDataState<T, E> value) data,
    required TResult Function(AsyncLoadingState<T, E> value) loading,
    required TResult Function(AsyncErrorState<T, E> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncDataState<T, E> value)? data,
    TResult? Function(AsyncLoadingState<T, E> value)? loading,
    TResult? Function(AsyncErrorState<T, E> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataState<T, E> value)? data,
    TResult Function(AsyncLoadingState<T, E> value)? loading,
    TResult Function(AsyncErrorState<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AsyncLoadingState<T, E extends Object?>
    implements AsyncState<T, E> {
  const factory AsyncLoadingState() = _$AsyncLoadingStateImpl<T, E>;
}

/// @nodoc
abstract class _$$AsyncErrorStateImplCopyWith<T, E extends Object?, $Res> {
  factory _$$AsyncErrorStateImplCopyWith(_$AsyncErrorStateImpl<T, E> value,
          $Res Function(_$AsyncErrorStateImpl<T, E>) then) =
      __$$AsyncErrorStateImplCopyWithImpl<T, E, $Res>;
  @useResult
  $Res call({E error});
}

/// @nodoc
class __$$AsyncErrorStateImplCopyWithImpl<T, E extends Object?, $Res>
    extends _$AsyncStateCopyWithImpl<T, E, $Res, _$AsyncErrorStateImpl<T, E>>
    implements _$$AsyncErrorStateImplCopyWith<T, E, $Res> {
  __$$AsyncErrorStateImplCopyWithImpl(_$AsyncErrorStateImpl<T, E> _value,
      $Res Function(_$AsyncErrorStateImpl<T, E>) _then)
      : super(_value, _then);

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$AsyncErrorStateImpl<T, E>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as E,
    ));
  }
}

/// @nodoc

class _$AsyncErrorStateImpl<T, E extends Object?>
    implements AsyncErrorState<T, E> {
  const _$AsyncErrorStateImpl(this.error);

  @override
  final E error;

  @override
  String toString() {
    return 'AsyncState<$T, $E>.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AsyncErrorStateImpl<T, E> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AsyncErrorStateImplCopyWith<T, E, _$AsyncErrorStateImpl<T, E>>
      get copyWith => __$$AsyncErrorStateImplCopyWithImpl<T, E,
          _$AsyncErrorStateImpl<T, E>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) data,
    required TResult Function() loading,
    required TResult Function(E error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? data,
    TResult? Function()? loading,
    TResult? Function(E error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? data,
    TResult Function()? loading,
    TResult Function(E error)? error,
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
    required TResult Function(AsyncDataState<T, E> value) data,
    required TResult Function(AsyncLoadingState<T, E> value) loading,
    required TResult Function(AsyncErrorState<T, E> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AsyncDataState<T, E> value)? data,
    TResult? Function(AsyncLoadingState<T, E> value)? loading,
    TResult? Function(AsyncErrorState<T, E> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AsyncDataState<T, E> value)? data,
    TResult Function(AsyncLoadingState<T, E> value)? loading,
    TResult Function(AsyncErrorState<T, E> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class AsyncErrorState<T, E extends Object?>
    implements AsyncState<T, E> {
  const factory AsyncErrorState(final E error) = _$AsyncErrorStateImpl<T, E>;

  E get error;

  /// Create a copy of AsyncState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AsyncErrorStateImplCopyWith<T, E, _$AsyncErrorStateImpl<T, E>>
      get copyWith => throw _privateConstructorUsedError;
}
