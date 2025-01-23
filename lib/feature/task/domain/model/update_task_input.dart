
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_task_input.freezed.dart';
part 'update_task_input.g.dart';

@freezed
class UpdateTaskInput with _$UpdateTaskInput {
  const factory UpdateTaskInput({
    required String id,
    required Option<String> title,
    required Option<String> description,
    required Option<bool> isCompleted,
  }) = _UpdateTaskInput;
	
  factory UpdateTaskInput.fromJson(Map<String, dynamic> json) =>
			_$UpdateTaskInputFromJson(json);
}
