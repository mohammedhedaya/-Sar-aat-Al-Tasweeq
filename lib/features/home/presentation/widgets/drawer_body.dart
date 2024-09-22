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
  int? _selectedIndex;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        AspectRatio(
          aspectRatio: 1.4,
          child: Image.asset(
            Assets.imagesApplogo,
          ),
        ),
        DrawerListTileItem(
          title: "منصات الترويج",
          icon: Assets.imagesSHAREICON,
          isSelected: _selectedIndex == 0,
          onTap: () {
            _onItemTap(0);
            context.pop();
          },
        ),
        DrawerListTileItem(
          title: "الملف الشخصي",
          icon: Assets.imagesHomeInDrawer,
          isSelected: _selectedIndex == 1,
          onTap: () {
            _onItemTap(1);
            context.push('/profileView');
          },
        ),
        DrawerListTileItem(
          title: "اشتراك بالباقة",
          icon: Assets.imagesSubscribeOfPackage,
          isSelected: _selectedIndex == 2,
          onTap: () {
            _onItemTap(2);
            context.push('/subscribeToThePackageView');
          },
        ),
        DrawerListTileItem(
          title: "المحفظة الماسية",
          icon: Assets.imagesWallet,
          isSelected: _selectedIndex == 3,
          onTap: () {
            _onItemTap(3);
            context.push('/diamondWallet');
          },
        ),
        DrawerListTileItem(
          title: "المحادثة الفورية",
          icon: Assets.imagesChating,
          isSelected: _selectedIndex == 4,
          onTap: () {
            _onItemTap(4);
            context.push('/chatView');
          },
        ),
        DrawerListTileItem(
          title: "تواصل معنا",
          icon: Assets.imagesConectUs,
          isSelected: _selectedIndex == 5,
          onTap: () {
            _onItemTap(5);
            context.push('/contactUsView');
          },
        ),
        DrawerListTileItem(
          title: "اضافة مجموعات",
          icon: Assets.imagesAddGroups,
          isSelected: _selectedIndex == 6,
          onTap: () {
            _onItemTap(6);
            context.push('/addGroupView');
          },
        ),
        DrawerListTileItem(
          title: "شارك مع الأصدقاء واربح",
          icon: Assets.imagesShareingWithMyFriends,
          isSelected: _selectedIndex == 7,
          onTap: () {
            _onItemTap(7);
            context.push('/shareAndEarnView');
          },
        ),
        DrawerListTileItem(
          title: "اللغة (العربية)",
          icon: Assets.imagesLanguage,
          isSelected: _selectedIndex == 8,
          onTap: () {
            _onItemTap(8);
          },
        ),
        DrawerNotificationItem(
          onTap: () => _onItemTap(9),
          isSelected: _selectedIndex == 9,
        ),
        DrawerListTileItem(
          title: "الثيم",
          icon: Assets.imagesIconTheme,
          isSelected: _selectedIndex == 10,
          onTap: () {
            _onItemTap(10);
          },
          trailing: const CustomThemeDrawerWidget(),
        ),
        DrawerListTileItem(
          title: "الاقتراحات",
          icon: Assets.imagesSuggestions,
          isSelected: _selectedIndex == 11,
          onTap: () {
            _onItemTap(11);
            context.push('/addSuggestionView');
          },
        ),
        DrawerListTileItem(
          title: "حسابات سرعة التسويق",
          icon: Assets.imagesMarketingspeedcalculations,
          isSelected: _selectedIndex == 12,
          onTap: () {
            _onItemTap(12);
            context.push('/ourAccountsView');
          },
        ),
        DrawerListTileItem(
          title: "سياسة التطبيق",
          icon: Assets.imagesApplicationpolicy,
          isSelected: _selectedIndex == 13,
          onTap: () => _onItemTap(13),
        ),
        DrawerListTileItem(
          title: "تسجيل الخروج",
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
