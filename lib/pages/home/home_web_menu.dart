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

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: menuList.length,
              itemBuilder: (ctx, index) {
                final menu = menuList[index];
                return TextButton(
                  child: Text(
                    menu.title,
                    style: const TextStyle(color: RpTheme.witheColor),
                  ),
                  onPressed: () => menu.goToSection(),
                );
              },
              separatorBuilder: (_, __) => const SizedBox(width: 8.0),
            ),
          ),
          ...externalMenuList,
        ],
      ),
    );
  }
}
