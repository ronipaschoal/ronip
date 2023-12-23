import 'package:flutter/material.dart';
import 'package:ronip/pages/home/home_menu.dart';
import 'package:ronip/ui/theme.dart';

class HomeWebMenu extends StatelessWidget {
  final List<HomeMenu> menuList;
  final List<Widget> externalMenuList;

  const HomeWebMenu({
    super.key,
    required this.menuList,
    required this.externalMenuList,
  });

  List<Widget> _buildMenuList() {
    return menuList
        .map(
          (menu) => TextButton(
            child: Text(
              menu.title,
              style: const TextStyle(color: RpTheme.witheColor),
            ),
            onPressed: () => menu.goToSection(),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: RpTheme.backgroundColor,
      child: Row(
        children: [
          ..._buildMenuList(),
          ...externalMenuList,
        ],
      ),
    );
  }
}
