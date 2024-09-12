import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/features/home/presentation/widgets/drawer_body.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.6,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.r),
      ),
      backgroundColor: AppColors.navBarColor,
      child: const DrawerBody(),
    );
  }
}
