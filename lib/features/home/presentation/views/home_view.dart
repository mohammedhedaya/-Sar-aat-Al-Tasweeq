import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import '../../../../core/utils/app_colors.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/home_view_body.dart.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const CustomMenuDrawer(),
      backgroundColor: AppColors.darkGray,
      appBar: CustomAppBar(
        scaffoldKey: _scaffoldKey,
      ),
      body: const HomeViewBody(),
    );
  }
}
