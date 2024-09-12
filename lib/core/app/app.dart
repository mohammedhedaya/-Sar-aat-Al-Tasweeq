import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Add this import for localization
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/router/app_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 917),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          locale: DevicePreview.locale(context),
          supportedLocales: const [
            Locale('ar'),
          ],
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          localeResolutionCallback: (locale, supportedLocales) {
            return const Locale('ar');
          },
          builder: DevicePreview.appBuilder,
          title: 'Shopping Chart',
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          theme: ThemeData(
            scaffoldBackgroundColor: AppColors.darkGray,
          ),
        );
      },
    );
  }
}
