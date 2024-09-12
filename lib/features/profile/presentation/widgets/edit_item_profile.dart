import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/features/profile/presentation/widgets/custom_buttom_save_and_exit.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import 'custom_item_include_country.dart';

class EditItemProfile extends StatelessWidget {
  const EditItemProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "الاسم الأول",
                          style: AppStyles.style12W400Edite,
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      TextFormField(
                        initialValue: 'فيصل', // Initial value
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.dimGray,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        style: AppStyles.style18W400,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 6.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "الاسم الثاني",
                          style: AppStyles.style12W400Edite,
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      TextFormField(
                        initialValue: 'عبدالعزيز',
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.dimGray,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        style: AppStyles.style18W400,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "الاسم الثالث",
                          style: AppStyles.style12W400Edite,
                          textAlign: TextAlign.right,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      TextFormField(
                        initialValue: 'آل سعود',
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.dimGray,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        style: AppStyles.style18W400,
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
            SizedBox(height: 30.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "رقم الهاتف",
                    style: AppStyles.style12W400Edite,
                    textAlign: TextAlign.right,
                  ),
                ),
                TextFormField(
                  initialValue: '0501234567',
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "966",
                            style: AppStyles.style18W400,
                          ),
                          const Icon(Icons.keyboard_arrow_down,
                              color: AppColors.whiteColor),
                        ],
                      ),
                    ),
                    filled: true,
                    fillColor: AppColors.dimGray,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  style: AppStyles.style12W400Edite,
                ),
              ],
            ),
            SizedBox(height: 30.h),
            const CustomItemIncludeCountry(),
            SizedBox(height: 30.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "الإيميل",
                    style: AppStyles.style12W400Edite,
                    textAlign: TextAlign.right,
                  ),
                ),
                TextFormField(
                  initialValue: 'faisal_abdelaziz@yahoo.com',
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.dimGray,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  style: AppStyles.style18W400,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomButtomSaveAndExit(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
