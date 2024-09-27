import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/utils/assets.dart';
import '../../../contact_us/presentation/widgets/contact_us_item.dart';

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
            title: "AddWhatsappGroup".tr(context: context),
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
            title: "AddTelegramGroup".tr(context: context),
            icon: Assets.imagesAddtelegramgroup,
          ),
        ],
      ),
    );
  }
}
