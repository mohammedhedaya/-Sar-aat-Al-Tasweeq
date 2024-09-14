import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/contact_us/presentation/widgets/contact_us_item.dart';

class AddGroupViewBody extends StatelessWidget {
  const AddGroupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(33.0),
      child: Column(
        children: [
          Image.asset(
            Assets.imagesApplogo,
          ),
          ContactUsItem(
            onTap: () {
              context.push('/addWhatsappGroupView');
            },
            title: "إضافة مجموعات الواتساب",
            icon: Assets.imagesAddWhatsappgroup,
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
            height: 1.h,
          ),
          ContactUsItem(
            onTap: () {
              context.push('/addTelegramGroupView');
            },
            title: "إضافة القنوات التليجرام",
            icon: Assets.imagesAddtelegramgroup,
          ),
        ],
      ),
    );
  }
}
