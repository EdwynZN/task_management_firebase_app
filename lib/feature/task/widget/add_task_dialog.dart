import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_management/common/style/constraints.dart';
import 'package:task_management/common/lib/async_state.dart';
import 'package:task_management/common/widget/fade_slide_modal_configuration.dart';
import 'package:task_management/feature/task/controller/create_task_notifier.dart';
import 'package:task_management/feature/task/domain/model/task.dart';
import 'package:task_management/feature/task/domain/use_case/create_task_use_case.dart';

Future<void> createTaskDialog({
  required BuildContext context,
  bool barrierDismissible = true,
  Color? barrierColor = Colors.black54,
  bool useRootNavigator = true,
  RouteSettings? routeSettings,
}) async =>
    await showModal(
      builder: (_) => const _CreateTaskDialog(),
      context: context,
      routeSettings: routeSettings,
      useRootNavigator: useRootNavigator,
      configuration: FadeSlideConfiguration(
        barrierColor: barrierColor ?? Colors.black54,
        barrierDismissible: false,
      ),
    );

class _CreateTaskDialog extends StatefulWidget {
  const _CreateTaskDialog();

  @override
  State<_CreateTaskDialog> createState() => _CreateTaskDialogState();
}

class _CreateTaskDialogState extends State<_CreateTaskDialog> {
  final TextEditingController title = TextEditingController();
  final TextEditingController description = TextEditingController();
  late final CreateTaskNotifier notifier;
  late ThemeData theme;

  @override
  void initState() {
    super.initState();
    final useCase = context.read<CreateTaskUseCase>();
    notifier = CreateTaskNotifier(useCase);
    notifier.addListener(_closeWhenSucces);
    title.addListener(_clearError);
  }

  void _closeWhenSucces() {
    if (notifier.state case AsyncDataState<Task, String>()) {
      final nav = Navigator.of(context);
      Future.microtask(() => context.mounted ? nav.pop() : null);
    }
  }

  void _clearError() {
    notifier.clearErrorType();
  }

  @override
  void didChangeDependencies() {
    theme = Theme.of(context);
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    notifier.removeListener(_closeWhenSucces);
    title.removeListener(_clearError);
    title.dispose();
    description.dispose();
    notifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CreateTaskNotifier>.value(
      value: notifier,
      child: SafeArea(
        top: false,
        maintainBottomViewPadding: true,
        child: Dialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
          ),
          alignment: Alignment.bottomCenter,
          insetPadding: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 16,
              children: [
                Selector<CreateTaskNotifier, String?>(
                  selector: (_, notifier) =>
                      notifier.errorType == CreateTaskErrorType.title
                          ? switch (notifier.state) {
                              AsyncErrorState<Task, String>() =>
                                'Title is required',
                              _ => null,
                            }
                          : null,
                  builder: (context, error, child) {
                    return TextField(
                      controller: title,
                      maxLines: 1,
                      style: theme.textTheme.headlineMedium,
                      onTapOutside: (_) =>
                          FocusManager.instance.primaryFocus?.unfocus(),
                      decoration: InputDecoration(
                        hintText: 'Title',
                        hintStyle: theme.textTheme.headlineMedium!.copyWith(
                          color: theme.hintColor,
                        ),
                        helperText: '',
                        errorText: error,
                      ),
                    );
                  },
                ),
                TextField(
                  controller: description,
                  minLines: 5,
                  maxLines: 5,
                  style: theme.textTheme.bodyLarge,
                  onTapOutside: (_) =>
                      FocusManager.instance.primaryFocus?.unfocus(),
                  decoration: InputDecoration(
                    fillColor: theme.canvasColor,
                    filled: true,
                    border: OutlineInputBorder(),
                    hintText: 'Description',
                    hintStyle: theme.textTheme.bodyLarge!.copyWith(
                      color: theme.hintColor,
                    ),
                  ),
                ),
                Selector<CreateTaskNotifier, String?>(
                  selector: (_, notifier) =>
                      notifier.errorType == CreateTaskErrorType.unknown
                          ? switch (notifier.state) {
                              AsyncErrorState<Task, String>(:final error) =>
                                error,
                              _ => null,
                            }
                          : null,
                  builder: (context, errorMessage, child) {
                    if (errorMessage == null) {
                      return gap16;
                    }
                    return Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: Text(
                        errorMessage,
                        textAlign: TextAlign.end,
                        style: theme.textTheme.labelLarge!.copyWith(
                          color: theme.colorScheme.error,
                        ),
                      ),
                    );
                  },
                ),
                Selector<CreateTaskNotifier, bool>(
                  selector: (_, notifier) => switch (notifier.state) {
                    AsyncDataState<Task, String>() ||
                    AsyncLoadingState<Task, String>() =>
                      true,
                    _ => false,
                  },
                  builder: (context, isLoading, _) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: theme.colorScheme.error,
                            foregroundColor: theme.colorScheme.onError,
                            disabledBackgroundColor: theme
                                .colorScheme.errorContainer
                                .withValues(alpha: 0.56),
                            disabledForegroundColor: theme
                                .colorScheme.onErrorContainer
                                .withValues(alpha: 0.56),
                          ),
                          onPressed: isLoading
                              ? null
                              : () => Navigator.of(context).pop(),
                          child: Text('Cancel'),
                        ),
                        gap16,
                        ElevatedButton(
                          style: ButtonStyle(
                              minimumSize:
                                  const WidgetStatePropertyAll(Size(84, 40))),
                          onPressed: isLoading
                              ? null
                              : () => notifier.createTask(
                                    title: title.text,
                                    description: description.text,
                                  ),
                          child: isLoading
                              ? const SizedBox.square(
                                  dimension: 16,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2,
                                  ),
                                )
                              : const Text('Create'),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
