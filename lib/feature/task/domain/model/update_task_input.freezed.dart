// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTaskInput _$UpdateTaskInputFromJson(Map<String, dynamic> json) {
  return _UpdateTaskInput.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskInput {
  String get id => throw _privateConstructorUsedError;
  Option<String> get title => throw _privateConstructorUsedError;
  Option<String> get description => throw _privateConstructorUsedError;
  Option<bool> get isCompleted => throw _privateConstructorUsedError;

  /// Serializes this UpdateTaskInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTaskInputCopyWith<UpdateTaskInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskInputCopyWith<$Res> {
  factory $UpdateTaskInputCopyWith(
          UpdateTaskInput value, $Res Function(UpdateTaskInput) then) =
      _$UpdateTaskInputCopyWithImpl<$Res, UpdateTaskInput>;
  @useResult
  $Res call(
      {String id,
      Option<String> title,
      Option<String> description,
      Option<bool> isCompleted});
}

/// @nodoc
class _$UpdateTaskInputCopyWithImpl<$Res, $Val extends UpdateTaskInput>
    implements $UpdateTaskInputCopyWith<$Res> {
  _$UpdateTaskInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isCompleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTaskInputImplCopyWith<$Res>
    implements $UpdateTaskInputCopyWith<$Res> {
  factory _$$UpdateTaskInputImplCopyWith(_$UpdateTaskInputImpl value,
          $Res Function(_$UpdateTaskInputImpl) then) =
      __$$UpdateTaskInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      Option<String> title,
      Option<String> description,
      Option<bool> isCompleted});
}

/// @nodoc
class __$$UpdateTaskInputImplCopyWithImpl<$Res>
    extends _$UpdateTaskInputCopyWithImpl<$Res, _$UpdateTaskInputImpl>
    implements _$$UpdateTaskInputImplCopyWith<$Res> {
  __$$UpdateTaskInputImplCopyWithImpl(
      _$UpdateTaskInputImpl _value, $Res Function(_$UpdateTaskInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? isCompleted = null,
  }) {
    return _then(_$UpdateTaskInputImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTaskInputImpl implements _UpdateTaskInput {
  const _$UpdateTaskInputImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.isCompleted});

  factory _$UpdateTaskInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskInputImplFromJson(json);

  @override
  final String id;
  @override
  final Option<String> title;
  @override
  final Option<String> description;
  @override
  final Option<bool> isCompleted;

  @override
  String toString() {
    return 'UpdateTaskInput(id: $id, title: $title, description: $description, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskInputImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, isCompleted);

  /// Create a copy of UpdateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskInputImplCopyWith<_$UpdateTaskInputImpl> get copyWith =>
      __$$UpdateTaskInputImplCopyWithImpl<_$UpdateTaskInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTaskInputImplToJson(
      this,
    );
  }
}

abstract class _UpdateTaskInput implements UpdateTaskInput {
  const factory _UpdateTaskInput(
      {required final String id,
      required final Option<String> title,
      required final Option<String> description,
      required final Option<bool> isCompleted}) = _$UpdateTaskInputImpl;

  factory _UpdateTaskInput.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskInputImpl.fromJson;

  @override
  String get id;
  @override
  Option<String> get title;
  @override
  Option<String> get description;
  @override
  Option<bool> get isCompleted;

  /// Create a copy of UpdateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskInputImplCopyWith<_$UpdateTaskInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
