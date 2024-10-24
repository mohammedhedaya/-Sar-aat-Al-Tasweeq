import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';

import '../../../../core/utils/assets.dart';
import '../../../contact_us/presentation/widgets/contact_us_item.dart';

class AddGroupViewBody extends StatelessWidget {
  const AddGroupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
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
            color: isDark ? Colors.white : AppColors.blueLight,
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
