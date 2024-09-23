import 'package:flutter/material.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';

final ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.lightTheme,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: AppColors.blackColor,
    onPrimary: Colors.white,
    secondary: AppColors.lightTheme,
    onSecondary: Colors.black,
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: AppColors.lightTheme,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: AppColors.lightTheme,
    surfaceTintColor: Colors.transparent,
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: AppColors.lightTheme,
  ),
  listTileTheme: const ListTileThemeData(
    tileColor: Color.fromARGB(255, 62, 62, 62),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: AppColors.gray,
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
