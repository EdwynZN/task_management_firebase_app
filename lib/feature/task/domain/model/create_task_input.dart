import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_task_input.freezed.dart';
part 'create_task_input.g.dart';

@freezed
class CreateTaskInput with _$CreateTaskInput {
  const factory CreateTaskInput({
    required String title,
    String? description,
  }) = _CreateTaskInput;

  factory CreateTaskInput.fromJson(Map<String, dynamic> json) =>
			_$CreateTaskInputFromJson(json);
	
}
