import 'package:flutter/material.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';

class CustomTextInHome extends StatelessWidget {
  const CustomTextInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: RichText(
        textAlign: TextAlign.right, // محاذاة النص لليمين
        text: const TextSpan(
          children: [
             TextSpan(
              text: 'ابدأ الترويج\n', // النص الأول
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 16, // حجم النص 16
                fontWeight: FontWeight.w900, // وزن النص 900
              ),
            ),
            TextSpan(
              text:
              'لوريم ايبسوم هو نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى. يستخدم في صناعات المطابع ودور النشر. كان لوريم ايبسوم ولايزال المعيار به في النص الشكلي منذ القرن الخامس عشر...عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة',
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 10, // حجم النص 10
                fontWeight: FontWeight.w100, // وزن النص 100
              ),
            ),
          ],
        ),
      ),
    );
  }
}
