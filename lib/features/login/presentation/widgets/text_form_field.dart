import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/features/login/presentation/widgets/swith_theme.dart';

class CustomTextFormFields extends StatefulWidget {
  const CustomTextFormFields({super.key});

  @override
  _CustomTextFormFieldsState createState() => _CustomTextFormFieldsState();
}

class _CustomTextFormFieldsState extends State<CustomTextFormFields> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 350.h, // Use ScreenUtil for vertical position
          left: 30.w, // Use ScreenUtil for horizontal position
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 0.8.sw, // Use ScreenUtil to set width as a percentage of screen width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r), // Use ScreenUtil for border radius
                  color: AppColors.dimGray,
                ),
                child: TextFormField(
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'الأيميل',
                    hintStyle: const TextStyle(color: AppColors.whiteColor),
                    filled: true,
                    fillColor: Colors.transparent,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50.r), // Use ScreenUtil for border radius
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.all(15.w), // Use ScreenUtil for padding
                  ),
                  style: TextStyle(color: AppColors.whiteColor, fontSize: 18.sp), // Use ScreenUtil for font size
                ),
              ),
              SizedBox(height: 15.h), // Use ScreenUtil for spacing
              Container(
                width: 0.8.sw, // Use ScreenUtil to set width as a percentage of screen width
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r), // Use ScreenUtil for border radius
                  color: AppColors.dimGray,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: AppColors.whiteColor,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    ),
                    Expanded(
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          hintText: 'كلمة السر',
                          hintStyle: const TextStyle(color: AppColors.whiteColor),
                          filled: true,
                          fillColor: Colors.transparent,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.r), // Use ScreenUtil for border radius
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.all(15.w), // Use ScreenUtil for padding
                        ),
                        style: TextStyle(color: AppColors.whiteColor, fontSize: 18.sp), // Use ScreenUtil for font size
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h), // Use ScreenUtil for spacing
              const SwithTheme(), // Use the responsive switch theme
            ],
          ),
        ),
      ],
    );
  }
}
