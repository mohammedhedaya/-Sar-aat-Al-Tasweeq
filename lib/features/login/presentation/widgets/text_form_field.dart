import 'package:flutter/material.dart';
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
          top: 350,
          left: 30,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
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
                width: MediaQuery.of(context).size.width * 0.8,
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
              SwithTheme(),
            ],
          ),
        ),
      ],
    );
  }
}
