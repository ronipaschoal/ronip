import 'package:flutter/material.dart';
import 'package:ronip/model/home_menu.dart';
import 'package:ronip/ui/theme.dart';

class HomeDrawer extends StatelessWidget {
  final List<HomeMenu> menuList;
  final List<Widget> externalMenuList;
  final GlobalKey<ScaffoldState> drawerKey;
  final ScrollController scrollController;

  const HomeDrawer({
    super.key,
    required this.menuList,
    required this.externalMenuList,
    required this.drawerKey,
    required this.scrollController,
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
            height: 1.0,
            width: 120.0,
            color: RpTheme.brandColor,
          ),
          RpTheme.spacerMedium,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...externalMenuList,
            ],
          ),
        ],
      ),
    );
  }
}
