// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpdateTaskDtoImpl _$$UpdateTaskDtoImplFromJson(Map<String, dynamic> json) =>
    _$UpdateTaskDtoImpl(
      title: json['title'] as String?,
      description: json['description'] as String?,
      completed: json['completed'] as bool?,
    );

Map<String, dynamic> _$$UpdateTaskDtoImplToJson(_$UpdateTaskDtoImpl instance) =>
    <String, dynamic>{
      if (instance.title case final value?) 'title': value,
      if (instance.description case final value?) 'description': value,
      if (instance.completed case final value?) 'completed': value,
    };
