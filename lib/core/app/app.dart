import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:adaptive_theme/adaptive_theme.dart';
import '../components/app_theme.dart';
import '../router/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    context.locale;
    return ScreenUtilInit(
      designSize: const Size(375, 917),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return AdaptiveTheme(
          light: lightTheme,
          dark: darkTheme,
          initial: AdaptiveThemeMode.light,
          builder: (theme, darkTheme) => MaterialApp.router(
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
            builder: DevicePreview.appBuilder,
            title: 'سرعة التسويق',
            debugShowCheckedModeBanner: false,
            routerConfig: router,
            theme: theme,
            darkTheme: darkTheme,
          ),
        );
      },
    );
  }
}
