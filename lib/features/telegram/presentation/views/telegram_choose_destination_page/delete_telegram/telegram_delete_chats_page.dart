import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../core/utils/app_text_style.dart';

class TelegramDeleteChatsPage extends StatefulWidget {
  const TelegramDeleteChatsPage({super.key});

  @override
  State<TelegramDeleteChatsPage> createState() => _TelegramDeleteChatsPageState();
}

class _TelegramDeleteChatsPageState extends State<TelegramDeleteChatsPage> {
    bool selectAll = false;
  List<bool> isSelected = List.generate(15, (index) => false);
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        SizedBox(height: 25.h),
        CheckboxListTile(
          title: Text(
            'تحديد الكل',
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
        Padding(
          padding: EdgeInsetsDirectional.only(bottom: 15.h),
          child: InkWell(
            onTap: () {
              context.push('/telegramDeletingView');
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
                  "قم بالحذف",
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
