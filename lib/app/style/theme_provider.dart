import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:task_management/common/style/theme.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeNotifier();

  ThemeMode _mode = ThemeMode.light;
  final ThemeFlex _theme = ThemeFlex(FlexScheme.bigStone);

  ThemeData get light => _theme.light;
  ThemeData get dark => _theme.dark;
  ThemeMode get mode => _mode;

  void setMode(ThemeMode newMode) {
    _mode = newMode;
    notifyListeners();
  }

  void toggleMode() {
    setMode(_mode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light);
  }
}
