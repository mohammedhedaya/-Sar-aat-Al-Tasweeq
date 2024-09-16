import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class LaunchChatsMessagesViewBody extends StatelessWidget {
  const LaunchChatsMessagesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const NeverScrollableScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
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
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 53.h),
            ],
          ),
        ),
        SliverFillRemaining(
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
            child: Padding(
              padding: const EdgeInsets.all(16.0),
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
                              color: Color(0xffE0E0E0),
                            ),
                            SizedBox(width: 5.w),
                            AudioWaveforms(
                              size: Size(100.w, 20.h),
                              recorderController: RecorderController(),
                              waveStyle: const WaveStyle(
                                waveColor: Color(0xffE0E0E0),
                                backgroundColor: Color(0xffE0E0E0),
                                waveThickness: 2,
                                middleLineThickness: 1.0,
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
                            ),
                            SizedBox(width: 5.w),
                            AudioWaveforms(
                              size: Size(100.w, 20.h),
                              recorderController: RecorderController(),
                              waveStyle: const WaveStyle(
                                waveColor: Color(0xffE0E0E0),
                                backgroundColor: Color(0xffE0E0E0),
                                waveThickness: 2,
                                middleLineThickness: 1.0,
                              ),
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
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
