import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/constants/constants.dart';
import 'core/app/app.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  runApp(
    DevicePreview(
      enabled: kreleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}