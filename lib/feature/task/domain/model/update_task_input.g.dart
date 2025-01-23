// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_task_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTaskInputImpl _$$UpdateTaskInputImplFromJson(
        Map<String, dynamic> json) =>
    _$UpdateTaskInputImpl(
      id: json['id'] as String,
      title: Option<String>.fromJson(json['title'], (value) => value as String),
      description: Option<String>.fromJson(
          json['description'], (value) => value as String),
      isCompleted:
          Option<bool>.fromJson(json['isCompleted'], (value) => value as bool),
    );

Map<String, dynamic> _$$UpdateTaskInputImplToJson(
        _$UpdateTaskInputImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title.toJson(
        (value) => value,
      ),
      'description': instance.description.toJson(
        (value) => value,
      ),
      'isCompleted': instance.isCompleted.toJson(
        (value) => value,
      ),
    };
