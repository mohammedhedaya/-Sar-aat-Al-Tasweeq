import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class SwithTheme extends StatefulWidget {

   SwithTheme({super.key});

  @override
  State<SwithTheme> createState() => _SwithThemeState();
}

class _SwithThemeState extends State<SwithTheme> {
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width * 0.2,
      height: MediaQuery.of(context).size.width * 0.1,
      decoration: BoxDecoration(
        color: AppColors.mixWhiteAndGray,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isDarkTheme = false;
              });
            },
            child: SvgPicture.asset(
              AppAssets.lightIcon,
              width: 29,
              height: 30,
              color: !_isDarkTheme ? Colors.black : Colors.grey,
            ),
          ),
          const SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              setState(() {
                _isDarkTheme = true;
              });
            },
            child: SvgPicture.asset(
              AppAssets.darkIcon,
              width: 29,
              height: 30,
              color: _isDarkTheme ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
