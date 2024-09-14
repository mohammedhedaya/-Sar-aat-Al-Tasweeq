import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.imagesHomeBackground),
          opacity: 0.26,
        ),
      ),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                SizedBox(height: 25.h),
                const BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color: Color(0xFF7B7B7B),
                  tail: true,
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 25.h),
                const BubbleSpecialThree(
                  text:
                      'وريم إيبسوم هو ببساطة نص شكلي (بمعنى أن الغاية هي الشكل وليس المحتوى)',
                  color: Color(0xffFFFEFE),
                  tail: true,
                  isSender: false,
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: AppColors.navBarColor,
            padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 11.w),
            child: Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Transform.rotate(
                    angle: 3.14,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      padding: const EdgeInsets.all(5.0),
                      decoration: const BoxDecoration(
                        color: AppColors.mixWhiteAndGray,
                        shape: BoxShape.circle,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.send,
                          color: AppColors.navBarColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: AppColors.mixWhiteAndGray,
                      filled: true,
                      hintText: 'اكتب رسالتك',
                      hintStyle: AppStyles.style12W400.copyWith(
                        color: const Color(0xff252525),
                        fontSize: 14.sp,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.r),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                    onSubmitted: (value) {},
                    onChanged: (value) {},
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.right,
                    style: AppStyles.style12W400.copyWith(
                      color: const Color(0xff252525),
                      fontSize: 14.sp,
                    ),
                    cursorColor: AppColors.navBarColor,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.add,
                    color: AppColors.whiteColor,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
