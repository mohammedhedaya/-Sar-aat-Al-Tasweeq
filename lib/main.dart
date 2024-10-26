import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/app/app.dart';
import 'core/constants/constants.dart';
import 'core/services/service_locator.dart';
import 'core/utils/my_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setupServiceLocator();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();
  

  runApp(
    DevicePreview(
      enabled: kreleaseMode,
      builder: (context) => EasyLocalization(
        supportedLocales: const [
          Locale('ar'),
          Locale('en'),
        ],
        path: 'assets/translation',
        fallbackLocale: const Locale('ar'),
        saveLocale: true,
        startLocale: const Locale('ar'),
        child: const MyApp(),
      ),
    ),
  );
}
