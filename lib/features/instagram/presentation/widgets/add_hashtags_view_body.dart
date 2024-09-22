import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';
import '../../../whatsapp/presentation/widgets/destination_check_box.dart';

import '../../../../core/utils/app_text_style.dart';

class AddHashtagsViewBody extends StatelessWidget {
  const AddHashtagsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      "يجب عليك كتابة الهاشتاج فى محرك البحث  ( # )",
                      style: AppStyles.style13W600.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(height: 22.h),
                  TextField(
                    onChanged: (value) {},
                    cursorColor: Colors.blue,
                    decoration: InputDecoration(
                      isDense: true,
                      hintText: "بحث عن الهاشتاج",
                      hintStyle: AppStyles.style14W800.copyWith(
                        color: const Color(0xff9C9C9C),
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
                  SizedBox(height: 72.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "تحديد الكل",
                        style: AppStyles.style13W600,
                      ),
                      const ChooseDestinationCheckbox(),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Column(
                    children: List.generate(
                      10,
                      (index) => Column(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.zero,
                            visualDensity: VisualDensity.compact,
                            dense: true,
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
                            trailing: const ChooseDestinationCheckbox(),
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
          padding: EdgeInsets.only(bottom: 15.h),
          child: InkWell(
            onTap: () {},
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
                  "التالى",
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
