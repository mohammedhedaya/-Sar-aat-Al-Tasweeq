import 'package:adaptive_theme/adaptive_theme.dart';

bool kreleaseMode = false;
String? token;
isDark(context) {
  final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
  return isDark;
}
