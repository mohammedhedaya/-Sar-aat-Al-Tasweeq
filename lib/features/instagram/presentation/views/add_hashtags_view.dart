import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/app_text_style.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/whatsapp/presentation/widgets/destination_check_box.dart';

class AddHashtagsView extends StatelessWidget {
  const AddHashtagsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.navBarColor,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          " # إضافة الهاشتجات",
          style: AppStyles.style17W800.copyWith(
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.white.withOpacity(0.8),
            ),
          ),
        ],
      ),
      body: Padding(
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
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(5.0),
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
                  const ChooseDestinationCheckbox()
                ],
              ),
              SizedBox(height: 27.h),
              Column(
                children: List.generate(
                  5,
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
              SizedBox(height: 59.h),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 40.h,
                  width: 200.w,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.r),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xff00C0CC),
                        Color(0xff006066),
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
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
            ],
          ),
        ),
      ),
    );
  }
}
