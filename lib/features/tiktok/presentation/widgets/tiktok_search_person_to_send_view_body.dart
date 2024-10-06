import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class TiktokSearchPersonToSendViewBody extends StatelessWidget {
  const TiktokSearchPersonToSendViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              "Searchforsomeonewhosentyouradtoallofhisfollowers"
                  .tr(context: context),
              style: AppStyles.style13W600.copyWith(
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 22.h),
                  TextField(
                    onChanged: (value) {},
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "Searchforaperson".tr(context: context),
                      hintStyle: AppStyles.style14W800.copyWith(
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: const Color(0xffF3F3F3),
                      prefixIcon: Transform.scale(
                        scale: 0.7,
                        child: SvgPicture.asset(
                          Assets.imagesKeyIcon,
                          height: 15.h,
                          width: 15.w,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 36.h),
                  Column(
                    children: List.generate(
                      3,
                      (index) {
                        return InkWell(
                          onTap: () {
                            context.push("/tiktokUserDetailsView");
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 11.w,
                              right: 11.w,
                              bottom: 28.h,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  "CARZIMA24",
                                  style: AppStyles.style13W600.copyWith(
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(width: 17.w),
                                CircleAvatar(
                                  radius: 20.r,
                                  backgroundImage: const AssetImage(
                                    Assets.imagesImageInProfile,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
