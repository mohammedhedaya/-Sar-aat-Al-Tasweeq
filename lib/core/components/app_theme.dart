import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.whiteColor,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: AppColors.blackColor,
    onPrimary: Colors.white,
    secondary: AppColors.blueLight,
    onSecondary: Colors.black,
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: AppColors.blueLight,
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColors.blueLight,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.blueLight,
    surfaceTintColor: Colors.transparent,
    // actionsIconTheme: IconThemeData(color: AppColors.whiteColor),
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: AppColors.blueLight,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.blueLight,
  ),
);

final ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.darkGray,
  brightness: Brightness.dark,
  dialogTheme: const DialogTheme(
    backgroundColor: AppColors.darkGray,
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: AppColors.navBarColor,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.navBarColor,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.navBarColor,
    surfaceTintColor: Colors.transparent,
  ),
);
