import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class TelegramChatsMessagesViewBody extends StatelessWidget {
  const TelegramChatsMessagesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return Column(
      children: [
        SizedBox(height: 30.h),
        CircleAvatar(
          radius: 40.r,
          backgroundImage: const AssetImage(
            Assets.imagesImageInProfile,
          ),
        ),
        SizedBox(height: 10.h),
        Text(
          "أحمد على محمد",
          style: AppStyles.style10W800.copyWith(
            color: isDark ? Colors.white : Colors.black,
          ),
        ),
        SizedBox(height: 53.h),
        Expanded(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xffABABAB),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50.r),
                topRight: Radius.circular(50.r),
              ),
            ),
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 25.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color(0xff323232),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.play_arrow_rounded,
                                    size: 35,
                                    color: Color(0xffE0E0E0),
                                  ),
                                  SizedBox(width: 5.w),
                                  SvgPicture.asset(
                                    Assets.imagesWaverecord,
                                    colorFilter: const ColorFilter.mode(
                                      Color(0xffDADADA),
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "0:31",
                                    style: AppStyles.style12W700,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10.w),
                            CircleAvatar(
                              radius: 20.r,
                              backgroundImage: const AssetImage(
                                Assets.imagesImageInProfile,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 27.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 20.r,
                              backgroundImage: const AssetImage(
                                Assets.imagesImageInProfile,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: const Color(0xffE0E0E0),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              child: Row(
                                children: [
                                  const Icon(
                                    Icons.play_arrow_rounded,
                                    color: Color(0xff323232),
                                    size: 35,
                                  ),
                                  SizedBox(width: 5.w),
                                  SvgPicture.asset(
                                    Assets.imagesWaverecord,
                                  ),
                                  SizedBox(width: 5.w),
                                  Text(
                                    "0:31",
                                    style: AppStyles.style12W700.copyWith(
                                      color: const Color(0xff323232),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 27.h),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 20.r,
                              backgroundImage: const AssetImage(
                                Assets.imagesImageInProfile,
                              ),
                            ),
                            const BubbleSpecialThree(
                              text: 'Sure',
                              color: Color(0xffE0E0E0),
                              tail: false,
                              isSender: false,
                            ),
                          ],
                        ),
                        SizedBox(height: 27.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const BubbleSpecialThree(
                              text: 'OK',
                              color: Color(0xff323232),
                              textStyle: TextStyle(
                                color: Color(0xffE0E0E0),
                              ),
                              tail: false,
                              isSender: false,
                            ),
                            CircleAvatar(
                              radius: 20.r,
                              backgroundImage: const AssetImage(
                                Assets.imagesImageInProfile,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 50.h),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                          color: Color(0xff3F3F3F),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.mic,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Expanded(
                      child: TextField(
                        cursorColor: const Color(0xff3F3F3F),
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "writeyourmessage".tr(context: context),
                          hintStyle: const TextStyle(
                            color: Color(0xffBBBBBB),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50.r),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: const Color(0xffFFFEFE),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.w, vertical: 10.h),
                          suffixIcon: InkWell(
                            onTap: () {},
                            child: Container(
                              margin: const EdgeInsets.all(7),
                              decoration: const BoxDecoration(
                                color: Color(0xffB6B6B6),
                                shape: BoxShape.circle,
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
