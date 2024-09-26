import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WeHelpYou'.tr()),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('alsalamealaykum'.tr()),
          SizedBox(height: 20.h),
          ElevatedButton(
            onPressed: () async {
              if (context.locale == const Locale('en')) {
                await EasyLocalization.of(context)!
                    .setLocale(const Locale('ar'));
              } else {
                await EasyLocalization.of(context)!
                    .setLocale(const Locale('en'));
              }
              setState(() {});
            },
            child: Center(
              child: Text(
                context.locale == const Locale('en')
                    ? 'Switch to Arabic'
                    : 'Switch to English',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Test2();
              }));
            },
            child: const Center(
              child: Text(
                "go",
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Test2 extends StatelessWidget {
  const Test2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'alsalamealaykum'.tr(),
        ),
      ),
    );
  }
}
