import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/constants/constants.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import 'custom_launch_drawer_item.dart';

class LaunchYourAdWhatsappDrawer extends StatelessWidget {
  const LaunchYourAdWhatsappDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      width: MediaQuery.of(context).size.width * 0.6,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              AspectRatio(
                aspectRatio: 1,
                child: Image.asset(
                  Assets.imagesApplogo,
                ),
              ),
              SizedBox(height: 20.h),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 15.h,
                        bottom: 11.h,
                        left: 22.h,
                        right: 22.w,
                      ),
                      decoration: BoxDecoration(
                        color: isDark(context)
                            ? const Color(0xff00C0CC)
                            : AppColors.yellowLight,
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            Assets.imagesLaunchJewel,
                          ),
                          SizedBox(height: 11.h),
                          Text(
                            '300',
                            style: AppStyles.style14W400.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 28.w),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(
                        top: 15.h,
                        bottom: 11.h,
                        left: 22.w,
                        right: 22.w,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xff006066),
                        borderRadius: BorderRadius.circular(15.r),
                        border: Border.all(
                          color: isDark(context)
                              ? Colors.white
                              : AppColors.yellowLight,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '18',
                            style: AppStyles.style14W400.copyWith(
                              fontSize: 22.sp,
                              color: isDark(context)
                                  ? Colors.white
                                  : AppColors.yellowLight,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'day'.tr(context: context),
                            style: AppStyles.style14W400.copyWith(
                              color: isDark(context)
                                  ? Colors.white
                                  : AppColors.yellowLight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 67.h),
              CustomLaunchDrawerItem(
                onTap: () {
                  context.push('/convertNumberToWhatsappLinkView');
                },
                title: "ConvertthenumbertothedirectlinktoWhatsApp"
                    .tr(context: context),
                image: Assets.imagesWhatsapppast,
              ),
              SizedBox(height: 40.h),
              CustomLaunchDrawerItem(
                onTap: () {
                  context.push('/launchAdAddWhatsappGroupsView');
                },
                title: "Addyourgroup(providefollowers)".tr(context: context),
                image: Assets.imagesAddgroup,
              ),
              SizedBox(height: 40.h),
              CustomLaunchDrawerItem(
                onTap: () {
                  context.push('/launchAdChooseGroupView');
                },
                title: "chooseoneofthegroupsanditissenttoallnumbers"
                    .tr(context: context),
                image: Assets.imagesChoosegroup,
              ),
              SizedBox(height: 40.h),
              CustomLaunchDrawerItem(
                onTap: () {
                  context.push('/whatsappGroupsView');
                },
                title: "WhatsAppgroups".tr(context: context),
                image: Assets.imagesWhatsappGroupicon,
              ),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
