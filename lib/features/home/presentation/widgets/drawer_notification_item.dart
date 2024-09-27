import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/assets.dart';
import 'drawer_list_tile_item.dart';

class DrawerNotificationItem extends StatefulWidget {
  const DrawerNotificationItem({
    super.key,
    required this.isSelected,
    required this.isSwitched,
    this.onTap,
    required this.onSwitchChanged,
  });

  final bool isSelected;
  final bool isSwitched;
  final void Function()? onTap;
  final void Function(bool) onSwitchChanged;

  @override
  State<DrawerNotificationItem> createState() => _DrawerNotificationItemState();
}

class _DrawerNotificationItemState extends State<DrawerNotificationItem> {
  @override
  Widget build(BuildContext context) {
    return DrawerListTileItem(
      onTap: () {
        widget.onTap?.call();
        widget.onSwitchChanged(!widget.isSwitched);
      },
      isSelected: widget.isSelected,
      title: "notifications".tr(context: context),
      icon: Assets.imagesNotifications,
      trailing: Transform.scale(
        scale: 0.6,
        child: Switch(
          trackOutlineColor: WidgetStateColor.transparent,
          activeColor: AppColors.whiteColor,
          inactiveTrackColor: const Color(0xffD9DEE2),
          inactiveThumbColor: AppColors.whiteColor,
          activeTrackColor: const Color(0xffDCC966),
          value: widget.isSwitched,
          onChanged: widget.onSwitchChanged, // Handle switch changes
        ),
      ),
    );
  }
}
