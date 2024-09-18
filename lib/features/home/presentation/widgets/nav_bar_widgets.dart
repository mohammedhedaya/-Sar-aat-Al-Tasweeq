import '../../../diamond_wallet/presentation/views/diamond_wallet_view.dart';
import '../../../subscribe_package/presentation/views/subscribe_to_the_package_view.dart';

import '../views/home_view.dart';
import 'custom_drawer.dart';
import 'user_bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import '../../../menu/presentation/views/menu_view.dart';

class UserMainLayoutScreen extends StatefulWidget {
  const UserMainLayoutScreen({super.key});

  @override
  State<UserMainLayoutScreen> createState() => _UserMainLayoutScreenState();
}

class _UserMainLayoutScreenState extends State<UserMainLayoutScreen> {
  int currentIndex = 0;
  late List<Widget> screens;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    screens = [
      const HomeView(),
      const DiamondWalletView(),
      const SubscribeToThePackageView(),
      const MenuView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: screens[currentIndex],
      drawer: const CustomMenuDrawer(),
      bottomNavigationBar: UserBottomNavBarWidget(
        currentIndex: currentIndex,
        onTap: (index) {
          if (index == 3) {
            //! Open the drawer when the menu is tapped
            _scaffoldKey.currentState?.openDrawer();
          } else {
            setState(() {
              currentIndex = index;
            });
          }
        },
      ),
    );
  }
}
