import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';
import 'custom_added_success_dialog.dart';
import '../../../auth/presentation/widgets/auth_text_field.dart';

class AddTelegramGroupViewBody extends StatefulWidget {
  const AddTelegramGroupViewBody({super.key});

  @override
  State<AddTelegramGroupViewBody> createState() =>
      _AddTelegramGroupViewBodyState();
}

class _AddTelegramGroupViewBodyState extends State<AddTelegramGroupViewBody> {
  final TextEditingController groupLinkController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Assets.imagesApplogo,
            ),
            Text(
              "اسم القناة",
              style: AppStyles.style12W400.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(height: 4.h),
            CustomAuthTextField(
              fiiledColor: AppColors.whiteColor.withOpacity(0.10),
              hintText: "",
              onChanged: (value) {},
            ),
            SizedBox(height: 26.h),
            Text(
              "رابط القناة",
              style: AppStyles.style12W400.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(height: 4.h),
            CustomAuthTextField(
              onChanged: (value) {},
              controller: groupLinkController,
              fiiledColor: AppColors.whiteColor.withOpacity(0.10),
              hintText: "",
              suffixIcon: InkWell(
                onTap: () async {
                  final data = await Clipboard.getData(Clipboard.kTextPlain);
                  if (data != null) {
                    groupLinkController.text = data.text ?? '';
                  }
                },
                child: Transform.scale(
                  scale: 0.5,
                  child: SvgPicture.asset(
                    Assets.imagesLinkTeal,
                  ),
                ),
              ),
            ),
            SizedBox(height: 26.h),
            Text(
              "الدولة",
              style: AppStyles.style12W400.copyWith(
                color: AppColors.whiteColor,
              ),
            ),
            SizedBox(height: 4.h),
            CustomAuthTextField(
              readOnly: true,
              fiiledColor: AppColors.whiteColor.withOpacity(0.10),
              hintText: "",
              prefixIcon: CountryCodePicker(
                onChanged: (value) {},
                initialSelection: 'SA',
                favorite: const ['+966', 'SA'],
                barrierColor: const Color(0xfffff9f9).withOpacity(0.33),
                textOverflow: TextOverflow.ellipsis,
                boxDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                padding: EdgeInsets.zero,
                showFlag: true,
                flagWidth: 50.w,
                hideMainText: true,
                showCountryOnly: true,
                flagDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                ),
              ),
              suffixIcon: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: Color.fromARGB(255, 10, 229, 207),
                  size: 30,
                ),
              ),
              onChanged: (value) {},
            ),
            SizedBox(height: 56.h),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  barrierColor: const Color(0xffFFF9F9).withOpacity(0.33),
                  builder: (context) {
                    return const CustomAddedSuccesDialog(
                      text: "تم إضافة قناتك في التلجرام",
                    );
                  },
                );
              },
              child: Center(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.w, vertical: 4.h),
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
                  child: Text(
                    "إضافة القناة فى التليجرام",
                    style: AppStyles.style14W400.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
