import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class CustomTextFormFields extends StatefulWidget {
  const CustomTextFormFields({super.key});

  @override
  _CustomTextFormFieldsState createState() => _CustomTextFormFieldsState();
}

class _CustomTextFormFieldsState extends State<CustomTextFormFields> {
  bool _obscureText = true;
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 350,
      left: 30,
      right: 30,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.dimGray,
            ),
            child: TextFormField(
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'الإيميل',
                hintStyle: const TextStyle(color: AppColors.whiteColor),
                filled: true,
                fillColor: Colors.transparent,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.all(15),
              ),
              style: const TextStyle(color: AppColors.whiteColor, fontSize: 18),
            ),
          ),
          const SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
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
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.all(15),
                    ),
                    style: const TextStyle(color: AppColors.whiteColor, fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              color: AppColors.dimGray,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(

              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  _isDarkTheme ? AppAssets.darkIcon : AppAssets.lightIcon,
                  width: 24,
                  height: 24,
                ),
                Switch(
                  value: _isDarkTheme,
                  onChanged: (value) {
                    setState(() {
                      _isDarkTheme = value;
                    });
                  },
                ),
                SvgPicture.asset(
                  _isDarkTheme ?  AppAssets.lightIcon : AppAssets.darkIcon,
                  width: 24,
                  height: 24,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
