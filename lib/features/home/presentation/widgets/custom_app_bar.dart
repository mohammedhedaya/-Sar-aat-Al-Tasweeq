import 'package:flutter/material.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.darkGray,
      elevation: 0,
      leading: Stack(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                size: 40,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          Positioned(
            right: 11,
            top: 2,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
              ),
              child: const Text(
                '5',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'يا هلا ,',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextSpan(
                    text: ' فيصل',
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            const Padding(
              padding: EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  AppAssets.imagePersonInAppBar,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
