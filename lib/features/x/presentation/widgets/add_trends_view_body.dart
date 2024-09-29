import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class AddTrendsViewBody extends StatelessWidget {
  const AddTrendsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 29.h),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      "Xtrendsareupdateddailywiththespeedofmarketing"
                          .tr(context: context),
                      style: AppStyles.style13W600.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 32.h),
                  TextField(
                    onChanged: (value) {},
                    style: AppStyles.style20W400.copyWith(
                      color: const Color(0xff00C0CC),
                    ),
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "Searchforxtrends".tr(context: context),
                      hintStyle: AppStyles.style20W400.copyWith(
                        color: const Color(0xff00C0CC),
                      ),
                      filled: true,
                      fillColor: const Color(0xffF3F3F3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.r),
                        borderSide: const BorderSide(
                          width: 0,
                          style: BorderStyle.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 18.h),
                  Column(
                    children: List.generate(
                      10,
                      (index) => Column(
                        children: [
                          ListTile(
                            visualDensity: VisualDensity.compact,
                            dense: true,
                            title: Text(
                              "#يوم_الوطنى",
                              style: AppStyles.style13W600,
                            ),
                            subtitle: Text(
                              "8.8 M",
                              style: AppStyles.style13W600.copyWith(
                                color: const Color(0xffACACAC),
                              ),
                            ),
                          ),
                          Divider(
                            color: AppColors.whiteColor,
                            thickness: 1,
                            endIndent: 25.w,
                            indent: 10.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 20.h),
          child: InkWell(
            onTap: () {
              context.pop();
              context.pop();
            },
            child: Container(
              height: 40.h,
              width: 200.w,
              padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.r),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xff00C0CC),
                    Color(0xff006066),
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Center(
                child: Text(
                  "next".tr(context: context),
                  style: AppStyles.style14W400,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
