import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/constants/constants.dart';
import 'package:shopping_chart/core/services/service_locator.dart';
import 'package:shopping_chart/core/utils/my_bloc_observer.dart';
import 'core/app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();

  runApp(
    DevicePreview(
      enabled: kreleaseMode,
      builder: (context) => const MyApp(),
    ),
  );
}
