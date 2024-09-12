import 'package:shopping_chart/features/home/presentation/views/home_view.dart';
import 'package:shopping_chart/features/home/presentation/widgets/custom_drawer.dart';
import 'package:shopping_chart/features/home/presentation/widgets/user_bottom_nav_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:shopping_chart/features/menu/presentation/views/menu_view.dart';
import 'package:shopping_chart/features/messages/presentation/views/messages_view.dart';
import 'package:shopping_chart/features/wallet/presentation/views/wallet_view.dart';

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
      const WalletView(),
      const MessagesView(),
      const MenuView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset: false,
      body: screens[currentIndex],
      drawer: const CustomDrawer(),
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
