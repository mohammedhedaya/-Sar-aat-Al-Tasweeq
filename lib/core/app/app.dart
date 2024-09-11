import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
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
      builder: (_, child) {
        return MaterialApp.router(
          title: 'Shopping Chart',
          debugShowCheckedModeBanner: false,
          routerConfig: router,
          theme: ThemeData(scaffoldBackgroundColor: AppColors.darkGray),
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
        );
      },
    );
  }
}
