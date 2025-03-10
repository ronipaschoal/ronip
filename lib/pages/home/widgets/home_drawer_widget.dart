import 'package:flutter/material.dart';
import 'package:ronip/model/home_menu_model.dart';
import 'package:ronip/pages/home/widgets/home_menu_button_widget.dart';
import 'package:ronip/ui/theme.dart';

class HomeDrawerWidget extends StatelessWidget {
  final List<HomeMenu> menuList;
  final List<ExternalMenu> externalMenuList;
  final List<Widget> actionList;
  final GlobalKey<ScaffoldState> drawerKey;
  final ScrollController scrollController;

  const HomeDrawerWidget({
    super.key,
    required this.menuList,
    required this.externalMenuList,
    required this.drawerKey,
    required this.scrollController,
    required this.actionList,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: RpTheme.menuColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.separated(
            shrinkWrap: true,
            itemCount: menuList.length,
            itemBuilder: (_, index) =>
                HomeMenuButtonWidget(menu: menuList[index]),
            separatorBuilder: (_, __) => RpTheme.spacerSmallX,
          ),
          RpTheme.spacerMedium,
          Container(
            width: 120.0,
            height: 1.0,
            color: RpTheme.brandColor,
          ),
          RpTheme.spacerMedium,
          SizedBox(
            height: 32.0,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: externalMenuList.length,
              itemBuilder: (_, index) {
                final externalMenu = externalMenuList[index];
                return IconButton(
                  onPressed: externalMenu.goToExternal,
                  icon: externalMenu.iconWidget(const Size(16.0, 16.0)),
                );
              },
              separatorBuilder: (_, __) => RpTheme.spacerSmallX,
            ),
          ),
          RpTheme.spacerMedium,
          Container(
            width: 120.0,
            height: 1.0,
            color: RpTheme.brandColor,
          ),
          RpTheme.spacerMedium,
          ...actionList,
        ],
      ),
    );
  }
}
