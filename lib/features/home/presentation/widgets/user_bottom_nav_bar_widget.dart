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
    required this.isDrawerOpen,
  });

  final void Function(int)? onTap;
  final int currentIndex;
  final bool isDrawerOpen;

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
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
            image: isDark ? Assets.imagesHomeDark : Assets.imagesHomeactive,
            height: 29.h,
          ),
          icon: SvgPicture.asset(
            Assets.imagesHomeicon,
            colorFilter: const ColorFilter.mode(
              AppColors.whiteColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        BottomNavigationBarItem(
          tooltip: "Wallet",
          label: 'Wallet',
          activeIcon: ActiveNavBarContainer(
            image: isDark ? Assets.imagesWalletDark : Assets.imagesActiveWallet,
            height: 29.h,
          ),
          icon: SvgPicture.asset(
            Assets.imagesWalleticon,
            colorFilter: const ColorFilter.mode(
              AppColors.whiteColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        BottomNavigationBarItem(
          tooltip: "Package",
          label: 'Package',
          activeIcon: ActiveNavBarContainer(
            image: isDark
                ? Assets.imagesPackageDark
                : Assets.imagesActivePackageLight,
            height: 29.h,
          ),
          icon: SvgPicture.asset(
            Assets.imagesPackageicon,
            colorFilter: const ColorFilter.mode(
              AppColors.whiteColor,
              BlendMode.srcIn,
            ),
          ),
        ),
        BottomNavigationBarItem(
          tooltip: "Menu",
          label: 'Menu',
          activeIcon: isDrawerOpen
              ? ActiveNavBarContainer(
                  image: Assets.imagesCloseNavBar,
                  height: 29.h,
                )
              : ActiveNavBarContainer(
                  image: Assets.imagesMenuicon,
                  height: 29.h,
                ),
          icon: isDrawerOpen
              ? ActiveNavBarContainer(
                  image: isDark
                      ? Assets.imagesCloseNavBarDark
                      : Assets.imagesCloseNavBar,
                  height: 29.h,
                )
              : SvgPicture.asset(
                  Assets.imagesMenuicon,
                  colorFilter: const ColorFilter.mode(
                    AppColors.whiteColor,
                    BlendMode.srcIn,
                  ),
                ),
        ),
      ],
    );
  }
}
