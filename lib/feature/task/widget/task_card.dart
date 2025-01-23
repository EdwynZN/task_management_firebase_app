import 'package:flutter/material.dart';
import 'package:task_management/app/style/constraints.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    required this.id,
    required this.title,
    required this.description,
    required this.isCompleted,
    super.key,
  });

  final String id;
  final String title;
  final String description;
  final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      margin: allPadding8,
      elevation: 4,
      shadowColor: Colors.black26,
      color: isCompleted
          ? ElevationOverlay.applySurfaceTint(
              theme.cardTheme.color ?? theme.cardColor,
              Colors.green,
              8,
            )
          : null,
      child: Padding(
        padding: allPadding16,
        child: Column(
          spacing: 12,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: theme.textTheme.headlineLarge,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Checkbox(
                    value: isCompleted,
                    onChanged: null,
                    visualDensity: VisualDensity.compact,
                  ),
                ),
              ],
            ),
            Text(description, style: theme.textTheme.bodyLarge),
          ],
        ),
      ),
    );
  }
}
