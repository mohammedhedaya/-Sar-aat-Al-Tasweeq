import 'package:shopping_chart/features/home/presentation/widgets/active_nav_bar_container.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
      backgroundColor: AppColors.navBarColor,
      elevation: 4,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.whiteColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          tooltip: "Home",
          label: 'Home',
          activeIcon: const ActiveNavBarContainer(
            image: Assets.imagesHomeicon,
          ),
          icon: SvgPicture.asset(
            Assets.imagesHomeicon,
          ),
        ),
        BottomNavigationBarItem(
          tooltip: "Wallet",
          label: 'Wallet',
          activeIcon: const ActiveNavBarContainer(
            image: Assets.imagesWalleticon,
          ),
          icon: SvgPicture.asset(
            Assets.imagesWalleticon,
          ),
        ),
        BottomNavigationBarItem(
          tooltip: "Message",
          label: 'Message',
          activeIcon: const ActiveNavBarContainer(
            image: Assets.imagesNessageicon,
          ),
          icon: SvgPicture.asset(
            Assets.imagesNessageicon,
          ),
        ),
        BottomNavigationBarItem(
          tooltip: "Menu",
          label: 'Menu',
          activeIcon: const ActiveNavBarContainer(
            image: Assets.imagesMenuicon,
          ),
          icon: SvgPicture.asset(
            Assets.imagesMenuicon,
          ),
        ),
      ],
    );
  }
}
