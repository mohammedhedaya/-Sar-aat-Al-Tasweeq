import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/custom_launch_drawer_item.dart';

class CustomLaunchFacebookAdDrawer extends StatelessWidget {
  const CustomLaunchFacebookAdDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      width: MediaQuery.of(context).size.width * 0.6,
      backgroundColor: AppColors.navBarColor,
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
                        color: const Color(0xff00C0CC),
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
                            style: AppStyles.style14W400,
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
                          color: Colors.white,
                          width: 1,
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            '18',
                            style: AppStyles.style14W400.copyWith(
                              fontSize: 22.sp,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            'يوم',
                            style: AppStyles.style14W400,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 67.h),
              CustomLaunchDrawerItem(
                onTap: () {},
                title: "إضافة مجموعات فيسبوك",
                image: Assets.imagesIconsendtwoarrow,
              ),
              CustomLaunchDrawerItem(
                onTap: () {},
                title: "أختر شخص من فيسبوك ارسل اعلانك على جميع متابعينه",
                image: Assets.imagesShareDribbbleLight,
              ),
              CustomLaunchDrawerItem(
                onTap: () {},
                title: "أختار أحد المجموعات ويتم الإرسال على جميع الأرقام",
                image: Assets.imagesChoosegroup,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
