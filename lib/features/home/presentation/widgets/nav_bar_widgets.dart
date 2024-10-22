import 'package:flutter/material.dart';

import '../../../diamond_wallet/presentation/views/diamond_wallet_view.dart';
import '../../../menu/presentation/views/menu_view.dart';
import '../../../subscribe_package/presentation/views/subscribe_to_the_package_view.dart';
import '../views/home_view.dart';
import 'custom_drawer.dart';
import 'user_bottom_nav_bar_widget.dart';

class UserMainLayoutScreen extends StatefulWidget {
  const UserMainLayoutScreen({super.key});

  @override
  State<UserMainLayoutScreen> createState() => _UserMainLayoutScreenState();
}

class _UserMainLayoutScreenState extends State<UserMainLayoutScreen> {
  int currentIndex = 0;
  bool isDrawerOpen = false;
  late List<Widget> screens;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    screens = [
      const HomeView(),
      DiamondWalletView(
        onBackToHome: () {
          setState(() {
            currentIndex = 0;
          });
        },
      ),
      SubscribeToThePackageView(
        onBackToHome: () {
          setState(() {
            currentIndex = 0;
          });
        },
      ),
      const MenuView(),
    ];
  }

  void toggleDrawer() {
    if (isDrawerOpen) {
      _scaffoldKey.currentState?.closeDrawer();
    } else {
      _scaffoldKey.currentState?.openDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: screens[currentIndex],
      drawer: const CustomMenuDrawer(),
      onDrawerChanged: (isOpened) {
        setState(() {
          isDrawerOpen = isOpened;
        });
      },
      bottomNavigationBar: UserBottomNavBarWidget(
        currentIndex: currentIndex,
        isDrawerOpen: isDrawerOpen,
        onTap: (index) {
          if (index == 3) {
            toggleDrawer();
          } else {
            setState(() {
              currentIndex = index;
              isDrawerOpen = false; // Reset drawer state when not on menu
            });
          }
        },
      ),
    );
  }
}
