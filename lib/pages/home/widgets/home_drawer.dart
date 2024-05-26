import 'package:flutter/material.dart';
import 'package:ronip/pages/home/widgets/home_menu.dart';
import 'package:ronip/ui/theme.dart';

class HomeDrawer extends StatelessWidget {
  final List<HomeMenu> menuList;
  final List<Widget> externalMenuList;

  const HomeDrawer({
    super.key,
    required this.menuList,
    required this.externalMenuList,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: RpTheme.backgroundColor.withOpacity(0.9),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemCount: menuList.length,
            itemBuilder: (ctx, index) {
              final menu = menuList[index];
              return TextButton(
                child: Text(
                  menu.title,
                  style: const TextStyle(color: RpTheme.textColor),
                ),
                onPressed: () => menu.goToSection(),
              );
            },
            separatorBuilder: (_, __) => RpTheme.spacerXS,
          ),
          ...externalMenuList,
        ],
      ),
    );
  }
}
