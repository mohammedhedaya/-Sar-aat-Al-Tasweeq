import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class SharingEarnBody extends StatelessWidget {
  const SharingEarnBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Positioned(
              top: -MediaQuery.of(context).size.height * 0.1,
              child: SvgPicture.asset(
                Assets.imagesBgSharingScreen,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.28),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25.r),
                        topRight: Radius.circular(25.r),
                      ),
                      color: const Color(0xffABABAB),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 50.h),
                        Text(
                          'كود الإحالة',
                          style: AppStyles.style20W400ShareWithFiends,
                        ),
                        SizedBox(height: 12.h),
                        TextFormField(
                          initialValue: '152510238jcsuxb',
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: AppColors.mixWhiteAndGray,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.r),
                              borderSide: BorderSide.none,
                            ),
                            suffixIcon: InkWell(
                              onTap: () {},
                              child: Transform.scale(
                                scale: 0.5,
                                child: SvgPicture.asset(
                                  Assets.imagesCopyicon,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          'شارك التطبيق على 10 اشخاص اربح 15 الماسة',
                          style: AppStyles.style20W400ShareWithFiends,
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height: 50.h),
                        Image.asset(
                          Assets.imagesImageSea,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
