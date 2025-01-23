// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTaskInputImpl _$$CreateTaskInputImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTaskInputImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CreateTaskInputImplToJson(
        _$CreateTaskInputImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
