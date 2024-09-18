import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import '../widgets/edit_item_profile.dart';

class EditProfileView extends StatelessWidget {
  const EditProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.imagesHomeBackground,
              ),
              opacity: 0.10,
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Column(
              children: [
                SizedBox(height: 60.h),
                Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50.r,
                          backgroundImage: const AssetImage(
                            Assets.imagesImageInProfile,
                          ),
                        ),
                        SizedBox(height: 10.h),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            "رفع صورة جديدة",
                            style: AppStyles.style14W500,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        "فيصل, عبدالعزيز",
                        style: AppStyles.style25W400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50.h),
                const EditItemProfile(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
