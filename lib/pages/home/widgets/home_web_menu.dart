import 'package:flutter/material.dart';
import 'package:ronip/model/home_menu.dart';
import 'package:ronip/ui/theme.dart';

class HomeWebMenu extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey;
  final ScrollController scrollController;
  final List<Widget> externalMenuList;
  final List<HomeMenu> menuList;

  const HomeWebMenu({
    super.key,
    required this.drawerKey,
    required this.scrollController,
    required this.externalMenuList,
    required this.menuList,
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
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    menu.translate(context),
                    style: const TextStyle(
                      color: RpTheme.textColor,
                    ),
                  ),
                  onPressed: () => menu.selectSection(
                    drawerKey: drawerKey,
                    scrollController: scrollController,
                  ),
                ),
                menu.isActive
                    ? Container(
                        height: 2.0,
                        width: 16.0,
                        color: RpTheme.brandColor,
                      )
                    : const SizedBox.shrink(),
              ],
            );
          },
          separatorBuilder: (_, __) => RpTheme.spacerXS,
        ),
        RpTheme.spacerMedium,
        Container(
          height: 24.0,
          width: 1.0,
          color: RpTheme.brandColor,
        ),
        RpTheme.spacerMedium,
        ...externalMenuList,
      ],
    );
  }
}
