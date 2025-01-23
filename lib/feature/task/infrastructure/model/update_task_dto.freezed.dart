// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateTaskDto _$UpdateTaskDtoFromJson(Map<String, dynamic> json) {
  return _UpdateTaskDto.fromJson(json);
}

/// @nodoc
mixin _$UpdateTaskDto {
  @JsonKey(includeIfNull: false)
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  bool? get complete => throw _privateConstructorUsedError;

  /// Serializes this UpdateTaskDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UpdateTaskDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateTaskDtoCopyWith<UpdateTaskDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTaskDtoCopyWith<$Res> {
  factory $UpdateTaskDtoCopyWith(
          UpdateTaskDto value, $Res Function(UpdateTaskDto) then) =
      _$UpdateTaskDtoCopyWithImpl<$Res, UpdateTaskDto>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? title,
      @JsonKey(includeIfNull: false) String? description,
      @JsonKey(includeIfNull: false) bool? complete});
}

/// @nodoc
class _$UpdateTaskDtoCopyWithImpl<$Res, $Val extends UpdateTaskDto>
    implements $UpdateTaskDtoCopyWith<$Res> {
  _$UpdateTaskDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateTaskDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? complete = freezed,
  }) {
    return _then(_value.copyWith(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      complete: freezed == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UpdateTaskDtoImplCopyWith<$Res>
    implements $UpdateTaskDtoCopyWith<$Res> {
  factory _$$UpdateTaskDtoImplCopyWith(
          _$UpdateTaskDtoImpl value, $Res Function(_$UpdateTaskDtoImpl) then) =
      __$$UpdateTaskDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) String? title,
      @JsonKey(includeIfNull: false) String? description,
      @JsonKey(includeIfNull: false) bool? complete});
}

/// @nodoc
class __$$UpdateTaskDtoImplCopyWithImpl<$Res>
    extends _$UpdateTaskDtoCopyWithImpl<$Res, _$UpdateTaskDtoImpl>
    implements _$$UpdateTaskDtoImplCopyWith<$Res> {
  __$$UpdateTaskDtoImplCopyWithImpl(
      _$UpdateTaskDtoImpl _value, $Res Function(_$UpdateTaskDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateTaskDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? complete = freezed,
  }) {
    return _then(_$UpdateTaskDtoImpl(
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      complete: freezed == complete
          ? _value.complete
          : complete // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateTaskDtoImpl implements _UpdateTaskDto {
  const _$UpdateTaskDtoImpl(
      {@JsonKey(includeIfNull: false) this.title,
      @JsonKey(includeIfNull: false) this.description,
      @JsonKey(includeIfNull: false) this.complete});

  factory _$UpdateTaskDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateTaskDtoImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? title;
  @override
  @JsonKey(includeIfNull: false)
  final String? description;
  @override
  @JsonKey(includeIfNull: false)
  final bool? complete;

  @override
  String toString() {
    return 'UpdateTaskDto(title: $title, description: $description, complete: $complete)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.complete, complete) ||
                other.complete == complete));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, description, complete);

  /// Create a copy of UpdateTaskDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskDtoImplCopyWith<_$UpdateTaskDtoImpl> get copyWith =>
      __$$UpdateTaskDtoImplCopyWithImpl<_$UpdateTaskDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateTaskDtoImplToJson(
      this,
    );
  }
}

abstract class _UpdateTaskDto implements UpdateTaskDto {
  const factory _UpdateTaskDto(
          {@JsonKey(includeIfNull: false) final String? title,
          @JsonKey(includeIfNull: false) final String? description,
          @JsonKey(includeIfNull: false) final bool? complete}) =
      _$UpdateTaskDtoImpl;

  factory _UpdateTaskDto.fromJson(Map<String, dynamic> json) =
      _$UpdateTaskDtoImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get title;
  @override
  @JsonKey(includeIfNull: false)
  String? get description;
  @override
  @JsonKey(includeIfNull: false)
  bool? get complete;

  /// Create a copy of UpdateTaskDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskDtoImplCopyWith<_$UpdateTaskDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
