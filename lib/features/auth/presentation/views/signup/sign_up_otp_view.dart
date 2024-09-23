import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_text_style.dart';

class SignUpOTPView extends StatefulWidget {
  const SignUpOTPView({super.key});
  @override
  State<SignUpOTPView> createState() => _SignUpOTPViewState();
}

class _SignUpOTPViewState extends State<SignUpOTPView> {
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
      // backgroundColor: const Color(0xFF2F2F2F),
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'يرجى إدخال رمز التحقق',
                  textAlign: TextAlign.center,
                  style: AppStyles.style12W400,
                ),
                SizedBox(height: 30.h),
                Pinput(
                  length: 4,
                  controller: _pinController,
                  focusNode: _focusNode,
                  showCursor: true,
                  readOnly: true,
                  defaultPinTheme: PinTheme(
                    width: 40.w,
                    height: 40.h,
                    textStyle: TextStyle(
                      fontSize: 22.sp,
                      color: Colors.black,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
                      borderRadius: BorderRadius.circular(5.r),
                    ),
                  ),
                  onCompleted: (pin) {
                    context.push('/successSignUpView');
                  },
                  onChanged: (value) {},
                  onSubmitted: (value) {},
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 100.w),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '0:$_start',
                      style: AppStyles.style12W600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: const Color(0xffABABAB),
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
            child: Column(
              children: [
                GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 3,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 2,
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
                      color: const Color(0xffABABAB),
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
                                  size: 22.sp,
                                )
                              : Text(
                                  value,
                                  style: TextStyle(
                                    fontSize: 21.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                        ),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      context.push('/successSignUpView');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blackColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      "تحقق",
                      style: AppStyles.style14W600,
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
