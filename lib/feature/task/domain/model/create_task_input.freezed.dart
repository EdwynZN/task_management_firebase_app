// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_task_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTaskInput _$CreateTaskInputFromJson(Map<String, dynamic> json) {
  return _CreateTaskInput.fromJson(json);
}

/// @nodoc
mixin _$CreateTaskInput {
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'completed')
  bool get isCompleted => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this CreateTaskInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateTaskInputCopyWith<CreateTaskInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskInputCopyWith<$Res> {
  factory $CreateTaskInputCopyWith(
          CreateTaskInput value, $Res Function(CreateTaskInput) then) =
      _$CreateTaskInputCopyWithImpl<$Res, CreateTaskInput>;
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'completed') bool isCompleted,
      String? description});
}

/// @nodoc
class _$CreateTaskInputCopyWithImpl<$Res, $Val extends CreateTaskInput>
    implements $CreateTaskInputCopyWith<$Res> {
  _$CreateTaskInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? isCompleted = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateTaskInputImplCopyWith<$Res>
    implements $CreateTaskInputCopyWith<$Res> {
  factory _$$CreateTaskInputImplCopyWith(_$CreateTaskInputImpl value,
          $Res Function(_$CreateTaskInputImpl) then) =
      __$$CreateTaskInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      @JsonKey(name: 'completed') bool isCompleted,
      String? description});
}

/// @nodoc
class __$$CreateTaskInputImplCopyWithImpl<$Res>
    extends _$CreateTaskInputCopyWithImpl<$Res, _$CreateTaskInputImpl>
    implements _$$CreateTaskInputImplCopyWith<$Res> {
  __$$CreateTaskInputImplCopyWithImpl(
      _$CreateTaskInputImpl _value, $Res Function(_$CreateTaskInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? isCompleted = null,
    Object? description = freezed,
  }) {
    return _then(_$CreateTaskInputImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateTaskInputImpl implements _CreateTaskInput {
  const _$CreateTaskInputImpl(
      {required this.title,
      @JsonKey(name: 'completed') required this.isCompleted,
      this.description});

  factory _$CreateTaskInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTaskInputImplFromJson(json);

  @override
  final String title;
  @override
  @JsonKey(name: 'completed')
  final bool isCompleted;
  @override
  final String? description;

  @override
  String toString() {
    return 'CreateTaskInput(title: $title, isCompleted: $isCompleted, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskInputImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, isCompleted, description);

  /// Create a copy of CreateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskInputImplCopyWith<_$CreateTaskInputImpl> get copyWith =>
      __$$CreateTaskInputImplCopyWithImpl<_$CreateTaskInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTaskInputImplToJson(
      this,
    );
  }
}

abstract class _CreateTaskInput implements CreateTaskInput {
  const factory _CreateTaskInput(
      {required final String title,
      @JsonKey(name: 'completed') required final bool isCompleted,
      final String? description}) = _$CreateTaskInputImpl;

  factory _CreateTaskInput.fromJson(Map<String, dynamic> json) =
      _$CreateTaskInputImpl.fromJson;

  @override
  String get title;
  @override
  @JsonKey(name: 'completed')
  bool get isCompleted;
  @override
  String? get description;

  /// Create a copy of CreateTaskInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskInputImplCopyWith<_$CreateTaskInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
