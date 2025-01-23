// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTaskInputImpl _$$CreateTaskInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTaskInputImpl(
      title: json['title'] as String,
      isCompleted: json['completed'] as bool,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CreateTaskInputImplToJson(
        _$CreateTaskInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'completed': instance.isCompleted,
      'description': instance.description,
    };
