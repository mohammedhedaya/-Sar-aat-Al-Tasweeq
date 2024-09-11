import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  final TextEditingController _pinController = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  late Timer _timer;
  int _start = 30;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_start == 0) {
        _timer.cancel();
      } else {
        setState(() {
          _start--;
        });
      }
    });
  }

  void _handleKeyTap(String value) {
    if (value == "<") {
      // Backspace
      if (_pinController.text.isNotEmpty) {
        _pinController.text =
            _pinController.text.substring(0, _pinController.text.length - 1);
      }
    } else {
      if (_pinController.text.length < 4) {
        _pinController.text += value;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F2F2F),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'يرجى إدخال رمز التحقق',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.gray,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 30.h),
                  Pinput(
                    length: 4,
                    controller: _pinController,
                    focusNode: _focusNode,
                    showCursor: true,
                    readOnly: true,
                    defaultPinTheme: PinTheme(
                      width: 60.w,
                      height: 60.h,
                      textStyle: TextStyle(
                        fontSize: 22.sp,
                        color: Colors.black,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                    onCompleted: (pin) {
                    },
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    '$_start',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: AppColors.dimGray,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
            child: Column(
              children: [
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 1.5,
                  children: List.generate(12, (index) {
                    String value;
                    if (index < 9) {
                      value = '${index + 1}'; // Display numbers (1 to 9)
                    } else if (index == 9) {
                      value = "."; // A dot (optional)
                    } else if (index == 10) {
                      value = "0"; // Zero
                    } else {
                      value = "<"; // For backspace symbol
                    }
                    return Material(
                      color: AppColors.dimGray,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _handleKeyTap(value);
                          });
                        },
                        borderRadius: BorderRadius.circular(10.r),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: value == "<"
                              ? Icon(
                            Icons.backspace_outlined,
                            color: Colors.black,
                            size: 24.sp,
                          )
                              : Text(
                            value,
                            style: TextStyle(
                              fontSize: 24.sp,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20.h),
                ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).push('/newPasswordPage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    minimumSize: Size(double.infinity, 50.h),
                  ),
                  child: Text(
                    'التالي',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
