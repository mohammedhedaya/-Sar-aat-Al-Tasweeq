import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_text_style.dart';

class PhoneChooseTheDestinationViewBody extends StatefulWidget {
  const PhoneChooseTheDestinationViewBody({super.key});

  @override
  State<PhoneChooseTheDestinationViewBody> createState() =>
      _PhoneChooseTheDestinationViewBodyState();
}

class _PhoneChooseTheDestinationViewBodyState
    extends State<PhoneChooseTheDestinationViewBody> {
  bool selectAll = false;
  List<bool> isSelected = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 25.h),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "ChooseAdestination(Contacts)".tr(context: context),
                    style: AppStyles.style17W800,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 40.h),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.r),
                      color: AppColors.whiteColor,
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.whiteColor.withOpacity(0.25),
                          spreadRadius: 3,
                          blurRadius: 5,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Contacts".tr(context: context),
                          style: AppStyles.style17W800.copyWith(
                            color: const Color(0xff2F2F2F),
                          ),
                        ),
                        Text(
                          "4000",
                          style: AppStyles.style17W800.copyWith(
                            color: const Color(0xff2F2F2F),
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 32.h),
                CheckboxListTile(
                  title: Text(
                    "SelectAll".tr(context: context),
                    style: AppStyles.style13W600,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.r),
                  ),
                  activeColor: const Color(0xff00C0CC),
                  checkColor: const Color(0xff00C0CC),
                  visualDensity: VisualDensity.compact,
                  contentPadding: EdgeInsets.zero,
                  side: const BorderSide(
                    color: Colors.white,
                  ),
                  value: selectAll,
                  onChanged: (value) {
                    setState(() {
                      selectAll = value!;
                      isSelected = List.generate(
                          isSelected.length, (index) => selectAll);
                    });
                  },
                ),
                SizedBox(height: 20.h),
                Expanded(
                  child: ListView.builder(
                    itemCount: isSelected.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CheckboxListTile(
                            title: Text(
                              'فيصل عبدالعزيز',
                              style: AppStyles.style13W600,
                            ),
                            contentPadding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(2.r),
                            ),
                            activeColor: const Color(0xff00C0CC),
                            checkColor: const Color(0xff00C0CC),
                            visualDensity: VisualDensity.compact,
                            side: const BorderSide(
                              color: Colors.white,
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
                            color: Colors.white,
                            thickness: 1,
                            endIndent: 25.w,
                            indent: 25.w,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.only(bottom: 15.h),
          child: InkWell(
            onTap: () {
              context.push('/phoneSendingView');
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
                  "send".tr(context: context),
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
