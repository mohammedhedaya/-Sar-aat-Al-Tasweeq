import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/assets.dart';

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
          activeIcon: SvgPicture.asset(
            Assets.imagesHomeicon,
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
          activeIcon: SvgPicture.asset(
            Assets.imagesWalleticon,
          ),
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
          activeIcon: SvgPicture.asset(
            Assets.imagesPackageicon,
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
          activeIcon: SvgPicture.asset(
            Assets.imagesMenuicon,
          ),
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
