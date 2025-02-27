import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/utils/app_text_style.dart';

class AddHashtagsViewBody extends StatefulWidget {
  const AddHashtagsViewBody({
    super.key,
  });

  @override
  State<AddHashtagsViewBody> createState() => _AddHashtagsViewBodyState();
}

class _AddHashtagsViewBodyState extends State<AddHashtagsViewBody> {
  bool selectAll = false;
  List<bool> isSelected = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: const AssetImage(
            Assets.imagesHashtagIcon,
          ),
          // opacity: 0.10,
          colorFilter: ColorFilter.mode(
            isDark ? Colors.white : Colors.black12,
            BlendMode.modulate,
          ),
          alignment: const Alignment(1, -0.55),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(22.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      "You must type the hashtag in the search engine (#)"
                          .tr(context: context),
                      style: AppStyles.style13W600.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.h),
                  TextField(
                    onChanged: (value) {},
                    cursorColor: Colors.blue,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "Searchforhashtags".tr(context: context),
                      hintStyle: AppStyles.style14W800.copyWith(
                        color: Colors.black,
                      ),
                      filled: true,
                      fillColor: isDark
                          ? const Color(0xffF3F3F3)
                          : AppColors.fillLight,
                      prefixIcon: Transform.scale(
                        scale: 0.7,
                        child: isDark
                            ? SvgPicture.asset(
                                Assets.imagesKeyIcon,
                                height: 15.h,
                                width: 15.w,
                              )
                            : SvgPicture.asset(
                                Assets.imagesKeyIcon,
                                height: 15.h,
                                width: 15.w,
                                colorFilter: const ColorFilter.mode(
                                  AppColors.yellowLight,
                                  BlendMode.srcIn,
                                ),
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
                ],
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Padding(
            padding: EdgeInsetsDirectional.symmetric(horizontal: 15.w),
            child: CheckboxListTile(
              title: Text(
                "SelectAll".tr(context: context),
                style: AppStyles.style13W600,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2.r),
              ),
              activeColor:
                  isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
              checkColor:
                  isDark ? const Color(0xff00C0CC) : AppColors.yellowLight,
              visualDensity: VisualDensity.compact,
              contentPadding: EdgeInsets.zero,
              side: BorderSide(
                color: isDark ? Colors.white : AppColors.blueLight,
              ),
              value: selectAll,
              onChanged: (value) {
                setState(() {
                  selectAll = value!;
                  isSelected =
                      List.generate(isSelected.length, (index) => selectAll);
                });
              },
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.symmetric(horizontal: 15.w),
              child: ListView.builder(
                itemCount: isSelected.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      CheckboxListTile(
                        title: Text(
                          "#عطور",
                          style: AppStyles.style13W600,
                        ),
                        subtitle: Text(
                          "8.8 M",
                          style: AppStyles.style13W600.copyWith(
                            color: const Color(0xffACACAC),
                          ),
                        ),
                        contentPadding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2.r),
                        ),
                        activeColor: isDark
                            ? const Color(0xff00C0CC)
                            : AppColors.yellowLight,
                        checkColor: isDark
                            ? const Color(0xff00C0CC)
                            : AppColors.yellowLight,
                        visualDensity: VisualDensity.compact,
                        side: BorderSide(
                          color: isDark ? Colors.white : AppColors.blueLight,
                        ),
                        value: isSelected[index],
                        onChanged: (value) {
                          setState(() {
                            isSelected[index] = value!;
                            if (!value) selectAll = false;
                            if (isSelected.every((element) => element)) {
                              selectAll = true;
                            }
                          });
                        },
                      ),
                      Divider(
                        color:
                            isDark ? Colors.white : AppColors.hightYellowLight,
                        thickness: 1,
                        endIndent: 25.w,
                        indent: 10.w,
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 15.h),
            child: InkWell(
              onTap: () {
                context.pop();
              },
              child: Container(
                height: 40.h,
                width: 200.w,
                padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  gradient: isDark
                      ? const LinearGradient(
                          colors: [
                            Color(0xff00C0CC),
                            Color(0xff006066),
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        )
                      : const LinearGradient(
                          colors: [
                            AppColors.linearLight1,
                            AppColors.linearLight2,
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                ),
                child: Center(
                  child: Text(
                    "next".tr(context: context),
                    style: AppStyles.style14W400.copyWith(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
