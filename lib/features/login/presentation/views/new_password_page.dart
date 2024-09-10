import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();
  final FocusNode _passwordFocusNode = FocusNode();
  final FocusNode _confirmPasswordFocusNode = FocusNode();
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFF2F2F2F),
      body: Column(
        children: [
          SizedBox(height: 30.h),
          const Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'كلمة السر الجديدة',
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
                    controller: _passwordController,
                    obscureText: !_isPasswordVisible,
                    focusNode: _passwordFocusNode,
                    readOnly: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'تأكيد كلمة السر الجديدة',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.gray,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(height: 10.h),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF696969),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: TextFormField(
                    controller: _confirmPasswordController,
                    obscureText: !_isConfirmPasswordVisible,
                    focusNode: _confirmPasswordFocusNode,
                    readOnly: true,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                          });
                        },
                      ),
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
          const Spacer(),
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
                      value = '${index + 1}';
                    } else if (index == 9) {
                      value = ".";
                    } else if (index == 10) {
                      value = "0";
                    } else {
                      value = "<";
                    }
                    return Material(
                      color: AppColors.dimGray,
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            if (value == "<") {
                              if (_passwordFocusNode.hasFocus) {
                                if (_passwordController.text.isNotEmpty) {
                                  _passwordController.text = _passwordController.text.substring(
                                      0, _passwordController.text.length - 1);
                                }
                              } else if (_confirmPasswordFocusNode.hasFocus) {
                                if (_confirmPasswordController.text.isNotEmpty) {
                                  _confirmPasswordController.text = _confirmPasswordController.text.substring(
                                      0, _confirmPasswordController.text.length - 1);
                                }
                              }
                            } else {
                              if (_passwordFocusNode.hasFocus) {
                                _passwordController.text += value;
                              } else if (_confirmPasswordFocusNode.hasFocus) {
                                _confirmPasswordController.text += value;
                              }
                            }
                          });
                        },
                        onLongPress: value == "<"
                            ? () {
                          setState(() {
                            if (_passwordFocusNode.hasFocus) {
                              _passwordController.clear();
                            } else if (_confirmPasswordFocusNode.hasFocus) {
                              _confirmPasswordController.clear();
                            }
                          });
                        }
                            : null,
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
                  onPressed: () {},
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

