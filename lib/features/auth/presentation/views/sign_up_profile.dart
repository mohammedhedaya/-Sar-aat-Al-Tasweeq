import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/auth/presentation/widgets/auth_text_field.dart';

class SignUpProfile extends StatelessWidget {
  const SignUpProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.symmetric(horizontal: 34.w),
          child: Column(
            children: [
              SizedBox(height: 80.h),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      size: const Size(150, 150),
                      painter: DashedCirclePainter(),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () {},
                        child: const CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.black,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 29.h),
              Text(
                "صورة الملف الشخصى",
                style: AppStyles.style20W400,
              ),
              SizedBox(height: 75.h),
              CustomAuthTextField(
                hintText: "رقم الهاتف",
                prefixIcon: Container(
                  width: 95.w,
                  height: 60.h,
                  decoration: const BoxDecoration(
                    color: Color(0xffD9D9D9),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.keyboard_arrow_down,
                        color: AppColors.blackColor,
                      ),
                      SizedBox(width: 5.w),
                      SvgPicture.asset(
                        Assets.imagesSuadiFlag,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        "966",
                        style: AppStyles.style16W400.copyWith(
                          color: AppColors.blackColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 23.h),
              CustomAuthTextField(
                hintText: "كلمة السر",
                prefixIcon: GestureDetector(
                  child: const Icon(
                    color: AppColors.visibilityColor,
                    Icons.visibility,
                  ),
                ),
              ),
              SizedBox(height: 23.h),
              CustomAuthTextField(
                hintText: "تأكيد كلمة السر",
                prefixIcon: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.visibility,
                    color: AppColors.visibilityColor,
                  ),
                ),
              ),
              SizedBox(height: 17.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 60.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: AppColors.dimGray,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.whiteColor,
                            size: 40,
                          ),
                          SizedBox(width: 25.w),
                          Text(
                            "المدينة",
                            style: AppStyles.style18W400,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 6.w),
                  Expanded(
                    child: Container(
                      height: 60.h,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: AppColors.dimGray,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.keyboard_arrow_down,
                            color: AppColors.whiteColor,
                            size: 40,
                          ),
                          SizedBox(width: 25.w),
                          SvgPicture.asset(
                            Assets.imagesSuadiFlag,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              const TermsConditionsWidget(),
              SizedBox(height: 22.h),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blackColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: Text(
                    "التالى",
                    style: AppStyles.style14W600,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}

class TermsConditionsWidget extends StatefulWidget {
  const TermsConditionsWidget({super.key});

  @override
  State<TermsConditionsWidget> createState() => _TermsConditionsWidgetState();
}

class _TermsConditionsWidgetState extends State<TermsConditionsWidget> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        RichText(
          text: TextSpan(
            text: "أوافق على",
            style: AppStyles.style13W400,
            children: [
              TextSpan(
                text: " الشروط والاحكام",
                style: AppStyles.style13W600,
              )
            ],
          ),
        ),
        Checkbox(
          value: isChecked,
          visualDensity: const VisualDensity(
            horizontal: VisualDensity.minimumDensity,
            vertical: VisualDensity.minimumDensity,
          ),
          onChanged: (value) {
            setState(() {
              isChecked = value!;
            });
          },
          activeColor: AppColors.whiteColor,
          checkColor: AppColors.blackColor,
          side: const BorderSide(
            color: AppColors.whiteColor,
            strokeAlign: 3.0,
          ),
        ),
      ],
    );
  }
}

class DashedCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    var dashWidth = 5.0;
    var dashSpace = 5.0;
    var radius = size.width / 2;
    var center = Offset(size.width / 2, size.height / 2);
    var circumference = 2 * 3.141592653589793 * radius;

    for (double i = 0; i < circumference; i += dashWidth + dashSpace) {
      double startX = radius * cos(i / radius) + center.dx;
      double startY = radius * sin(i / radius) + center.dy;
      double endX = radius * cos((i + dashWidth) / radius) + center.dx;
      double endY = radius * sin((i + dashWidth) / radius) + center.dy;
      canvas.drawLine(Offset(startX, startY), Offset(endX, endY), paint);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
