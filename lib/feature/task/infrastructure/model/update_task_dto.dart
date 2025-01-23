import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:task_management/feature/task/domain/model/update_task_input.dart';

part 'update_task_dto.freezed.dart';
part 'update_task_dto.g.dart';

@freezed
class UpdateTaskDto with _$UpdateTaskDto {
  const factory UpdateTaskDto({
    @JsonKey(includeIfNull: false) String? title,
    @JsonKey(includeIfNull: false) String? description,
    @JsonKey(includeIfNull: false) bool? complete,
  }) = _UpdateTaskDto;

  factory UpdateTaskDto.fromInput(UpdateTaskInput input) {
    return UpdateTaskDto(
      title: input.title.toNullable(),
      description: input.description.toNullable(),
      complete: input.isCompleted.toNullable(),
    );
  }

  factory UpdateTaskDto.fromJson(Map<String, dynamic> json) =>
      _$UpdateTaskDtoFromJson(json);
}
