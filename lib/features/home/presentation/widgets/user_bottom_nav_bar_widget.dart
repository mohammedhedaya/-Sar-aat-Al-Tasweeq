import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/assets.dart';
import 'active_nav_bar_container.dart';

class UserBottomNavBarWidget extends StatelessWidget {
  const UserBottomNavBarWidget({
    super.key,
    this.onTap,
    required this.currentIndex,
  });
  final void Function(int)? onTap;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      elevation: 4,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.whiteColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          tooltip: "Home",
          label: 'Home',
          activeIcon: ActiveNavBarContainer(
            image: Assets.imagesHomeicon,
            height: 29.h,
          ),
          icon: SvgPicture.asset(
            Assets.imagesHomeicon,
            colorFilter: const ColorFilter.mode(
              AppColors.darkGray,
              BlendMode.srcIn,
            ),
          ),
        ),
        BottomNavigationBarItem(
          tooltip: "Wallet",
          label: 'Wallet',
          activeIcon: const ActiveNavBarContainer(
            image: Assets.imagesWalleticon,
            // height: 25.h,
          ),
          // activeIcon: SvgPicture.asset(
          //   Assets.imagesWalleticon,
          // ),
          icon: SvgPicture.asset(
            Assets.imagesWalleticon,
            colorFilter: const ColorFilter.mode(
              AppColors.darkGray,
              BlendMode.srcIn,
            ),
          ),
        ),
        BottomNavigationBarItem(
          tooltip: "Package",
          label: 'Package',
          // activeIcon: SvgPicture.asset(
          //   Assets.imagesPackageicon,
          // ),
          activeIcon: ActiveNavBarContainer(
            image: Assets.imagesPackageicon,
            height: 29.h,
          ),
          icon: SvgPicture.asset(
            Assets.imagesPackageicon,
            colorFilter: const ColorFilter.mode(
              AppColors.darkGray,
              BlendMode.srcIn,
            ),
          ),
        ),
        BottomNavigationBarItem(
          tooltip: "Menu",
          label: 'Menu',
          activeIcon: ActiveNavBarContainer(
            image: Assets.imagesMenuicon,
            height: 29.h,
          ),
          // activeIcon: SvgPicture.asset(
          //   Assets.imagesMenuicon,
          // ),
          icon: SvgPicture.asset(
            Assets.imagesMenuicon,
            colorFilter: const ColorFilter.mode(
              AppColors.darkGray,
              BlendMode.srcIn,
            ),
          ),
        ),
      ],
    );
  }
}
