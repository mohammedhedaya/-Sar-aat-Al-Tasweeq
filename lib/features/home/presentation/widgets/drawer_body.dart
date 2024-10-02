import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'custom_theme_drawer_widget.dart';
import '../../../../core/utils/assets.dart';
import 'drawer_delete_account_btn.dart';
import 'drawer_list_tile_item.dart';
import 'drawer_notification_item.dart';

class DrawerBody extends StatefulWidget {
  const DrawerBody({super.key});

  @override
  State<DrawerBody> createState() => _DrawerBodyState();
}

class _DrawerBodyState extends State<DrawerBody> {
  bool _isDarkTheme = false;
  bool _isNotificationSwitched = true;
  int? _selectedIndex;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onNotificationSwitchChanged(bool value) {
    setState(() {
      _isNotificationSwitched = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
    return ListView(
      children: [
        AspectRatio(
          aspectRatio: 1.4,
          child: Image.asset(
            Assets.imagesApplogo,
          ),
        ),
        DrawerListTileItem(
          title: "promotion_platforms".tr(context: context),
          icon: Assets.imagesSHAREICON,
          isSelected: _selectedIndex == 0,
          onTap: () {
            _onItemTap(0);
            context.pop();
          },
        ),
        DrawerListTileItem(
          title: "profile".tr(context: context),
          icon: Assets.imagesHomeInDrawer,
          isSelected: _selectedIndex == 1,
          onTap: () {
            _onItemTap(1);
            context.push('/profileView');
          },
        ),
        DrawerListTileItem(
          title: "subscription_of_package".tr(context: context),
          icon: Assets.imagesSubscribeOfPackage,
          isSelected: _selectedIndex == 2,
          onTap: () {
            _onItemTap(2);
            context.push('/subscribeToThePackageView');
          },
        ),
        DrawerListTileItem(
          title: "diamond_wallet".tr(context: context),
          icon: Assets.imagesWallet,
          isSelected: _selectedIndex == 3,
          onTap: () {
            _onItemTap(3);
            context.push('/diamondWallet');
          },
        ),
        DrawerListTileItem(
          title: "online_chat".tr(context: context),
          icon: Assets.imagesChating,
          isSelected: _selectedIndex == 4,
          onTap: () {
            _onItemTap(4);
            context.push('/chatView');
          },
        ),
        DrawerListTileItem(
          title: "contact_us".tr(context: context),
          icon: Assets.imagesConectUs,
          isSelected: _selectedIndex == 5,
          onTap: () {
            _onItemTap(5);
            context.push('/contactUsView');
          },
        ),
        DrawerListTileItem(
          title: "add_groups".tr(context: context),
          icon: Assets.imagesAddGroups,
          isSelected: _selectedIndex == 6,
          onTap: () {
            _onItemTap(6);
            context.push('/addGroupView');
          },
        ),
        DrawerListTileItem(
          title: "share_with_friends".tr(context: context),
          icon: Assets.imagesShareingWithMyFriends,
          isSelected: _selectedIndex == 7,
          onTap: () {
            _onItemTap(7);
            context.push('/shareAndEarnView');
          },
        ),
        DrawerListTileItem(
          title: context.locale == const Locale('en')
              ? "Language (English)"
              : "اللغة (العربية)",
          icon: Assets.imagesLanguage,
          isSelected: _selectedIndex == 8,
          onTap: () async {
            if (context.locale == const Locale('en')) {
              await EasyLocalization.of(context)!.setLocale(const Locale('ar'));
            } else {
              await EasyLocalization.of(context)!.setLocale(const Locale('en'));
            }
            _onItemTap(8);
          },
        ),
        DrawerNotificationItem(
          onTap: () => _onItemTap(9),
          isSelected: _selectedIndex == 9,
          isSwitched: _isNotificationSwitched,
          onSwitchChanged: _onNotificationSwitchChanged,
        ),
        DrawerListTileItem(
          title: "theme".tr(context: context),
          icon: Assets.imagesIconTheme,
          isSelected: _selectedIndex == 10,
          onTap: () {
            _onItemTap(10);
            setState(() {
              _isDarkTheme = !_isDarkTheme;
            });
            // AdaptiveTheme.of(context).toggleThemeMode();
            if (isDark) {
              AdaptiveTheme.of(context).setLight();
            } else {
              AdaptiveTheme.of(context).setDark();
            }
          },
          trailing: CustomThemeDrawerWidget(
            isDarkTheme: _isDarkTheme,
            onThemeChange: (bool isDark) {
              setState(() {
                _isDarkTheme = isDark;
              });
            },
          ),
        ),
        DrawerListTileItem(
          title: "suggestions".tr(context: context),
          icon: Assets.imagesSuggestions,
          isSelected: _selectedIndex == 11,
          onTap: () {
            _onItemTap(11);
            context.push('/addSuggestionView');
          },
        ),
        DrawerListTileItem(
          title: "fast_makeing_accounts".tr(context: context),
          icon: Assets.imagesMarketingspeedcalculations,
          isSelected: _selectedIndex == 12,
          onTap: () {
            _onItemTap(12);
            context.push('/ourAccountsView');
          },
        ),
        DrawerListTileItem(
          title: "app_policy".tr(context: context),
          icon: Assets.imagesApplicationpolicy,
          isSelected: _selectedIndex == 13,
          onTap: () => _onItemTap(13),
        ),
        DrawerListTileItem(
          title: "logout".tr(context: context),
          icon: Assets.imagesLogOutIcon,
          isSelected: _selectedIndex == 14,
          onTap: () {
            _onItemTap(14);
            context.go('/');
          },
        ),
        const DrawerDeletAccountBtn(),
      ],
    );
  }
}
