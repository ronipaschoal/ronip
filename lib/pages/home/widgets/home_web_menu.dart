import 'package:flutter/material.dart';
import 'package:ronip/pages/home/widgets/home_menu.dart';
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        ListView.separated(
          scrollDirection: Axis.horizontal,
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
    );
  }
}
