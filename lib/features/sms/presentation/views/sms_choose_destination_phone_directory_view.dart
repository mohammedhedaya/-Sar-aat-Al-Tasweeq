import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/app_text_style.dart';
import '../../../../core/utils/assets.dart';

class SMSChooseDestinationPhoneDirectoryView extends StatefulWidget {
  const SMSChooseDestinationPhoneDirectoryView({super.key});

  @override
  State<SMSChooseDestinationPhoneDirectoryView> createState() =>
      _SMSChooseDestinationPhoneDirectoryViewState();
}

class _SMSChooseDestinationPhoneDirectoryViewState
    extends State<SMSChooseDestinationPhoneDirectoryView> {
  bool selectAll = false;
  List<bool> isSelected = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        surfaceTintColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                "launchaddwithease".tr(context: context),
                style: AppStyles.style17W800.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SvgPicture.asset(
              Assets.imagesRocket,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Colors.white60,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Numberofnumbers:(5000)contacts".tr(context: context),
              style: AppStyles.style17W800,
            ),
            SizedBox(height: 30.h),
            CheckboxListTile(
              title: Text(
                "${"SelectAll".tr(context: context)} (5000)",
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
                  isSelected =
                      List.generate(isSelected.length, (index) => selectAll);
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
            Center(
              child: InkWell(
                onTap: () {
                  context.push("/smsPhoneDirectorySendingView");
                },
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
        ),
      ),
    );
  }
}
