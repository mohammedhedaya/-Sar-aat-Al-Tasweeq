import 'package:flutter/material.dart';
import 'package:shopping_chart/core/utils/app_colors.dart';
import 'package:shopping_chart/core/utils/assets.dart';
import 'package:shopping_chart/features/home/presentation/widgets/drawer_list_tile_item.dart';

class DrawerNotificationItem extends StatefulWidget {
  const DrawerNotificationItem({
    super.key,
    required this.isSelected,
    this.onTap,
  });
  final bool isSelected;
  final void Function()? onTap;
  @override
  State<DrawerNotificationItem> createState() => _DrawerNotificationItemState();
}

class _DrawerNotificationItemState extends State<DrawerNotificationItem> {
  bool _isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return DrawerListTileItem(
      onTap: widget.onTap,
      isSelected: widget.isSelected,
      title: "الأشعارات",
      icon: Assets.imagesNotifications,
      trailing: Transform.scale(
        scale: 0.6,
        child: Switch(
          trackOutlineColor: WidgetStateColor.transparent,
          activeColor: AppColors.whiteColor,
          inactiveTrackColor: const Color(0xffD9DEE2),
          inactiveThumbColor: AppColors.whiteColor,
          activeTrackColor: const Color(0xffDCC966),
          value: _isSwitched,
          onChanged: (value) {
            setState(() {
              _isSwitched = value;
            });
          },
        ),
      ),
    );
  }
}
