import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController _controller = TextEditingController();

  void _unfocus() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F2F2F),
      body: GestureDetector(
        onTap: _unfocus,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'قم بإدخال بريدك المسجل وقم بحفظة لإعادة\nتعيين كلمة مرور جديدة',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.gray,
                        fontSize: 16.sp,
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFF696969),
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: TextFormField(
                        controller: _controller,
                        textAlign: TextAlign.center,
                        readOnly: true, // Disable the default keyboard
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: AppColors.dimGray,
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
                        value = "."; // A dot
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
                              if (value == "<") {
                                if (_controller.text.isNotEmpty) {
                                  _controller.text = _controller.text
                                      .substring(0, _controller.text.length - 1);
                                }
                              } else {
                                _controller.text += value;
                              }
                            });
                          },
                          onLongPress: value == "<" ? () {
                            setState(() {
                              _controller.clear();
                            });
                          } : null, // Only enable long press on the backspace button
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
                                fontSize: 22.sp,
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
                      GoRouter.of(context).push('/otp');
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
      ),
    );
  }
}
