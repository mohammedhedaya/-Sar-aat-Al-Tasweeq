import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_text_style.dart';

class CustomTextInHome extends StatelessWidget {
  const CustomTextInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: RichText(
        textAlign: TextAlign.right,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'ابدأ الترويج\n',
              style: AppStyles.style16W900,
            ),
            TextSpan(
              text:
                  'لوريم ايبسوم هو نص شكلي بمعنى أن الغاية هي الشكل وليس المحتوى. يستخدم في صناعات المطابع ودور النشر. كان لوريم ايبسوم ولايزال المعيار به في النص الشكلي منذ القرن الخامس عشر...عندما قامت مطبعة مجهولة برص مجموعة من الأحرف بشكل عشوائي أخذتها من نص، لتكوّن كتيّب بمثابة',
              style: AppStyles.style10W300,
            ),
          ],
        ),
      ),
    );
  }
}
