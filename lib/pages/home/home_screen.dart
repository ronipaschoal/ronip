import 'package:flutter/material.dart';
import 'package:ronip/helpers/media_query_helper.dart';
import 'package:ronip/model/home_menu.dart';
import 'package:ronip/pages/home/sections/home_section.dart';
import 'package:ronip/pages/home/widgets/home_drawer_widget.dart';
import 'package:ronip/pages/home/widgets/home_menu_widget.dart';
import 'package:ronip/pages/home/sections/about_section.dart';
import 'package:ronip/pages/home/sections/contact_section.dart';
import 'package:ronip/pages/home/sections/work_section.dart';
import 'package:ronip/ui/theme.dart';
import 'package:ronip/ui/widgets/flutter_banner_widget.dart';
import 'package:ronip/ui/widgets/logo_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final _drawerKey = GlobalKey<ScaffoldState>();
  final _scrollController = ScrollController();

  late final _homeMenu = HomeMenu(
    key: GlobalKey(),
    title: HomeSectionEnum.home,
    isActive: true,
    drawerKey: _drawerKey,
    scrollController: _scrollController,
  );

  late final _aboutMenu = HomeMenu(
    key: GlobalKey(),
    title: HomeSectionEnum.about,
    drawerKey: _drawerKey,
    scrollController: _scrollController,
    previousMenuList: [_homeMenu],
  );

  late final _programsMenu = HomeMenu(
    key: GlobalKey(),
    title: HomeSectionEnum.programs,
    drawerKey: _drawerKey,
    scrollController: _scrollController,
    previousMenuList: [_homeMenu, _aboutMenu],
  );

  late final _contactMenu = HomeMenu(
    key: GlobalKey(),
    title: HomeSectionEnum.contact,
    drawerKey: _drawerKey,
    scrollController: _scrollController,
    previousMenuList: [_homeMenu, _aboutMenu, _programsMenu],
  );

  late final _menuList = [
    _homeMenu,
    _aboutMenu,
    _programsMenu,
    _contactMenu,
  ];

  late final _externalMenuList = [
    ExternalMenu(
      icon: 'assets/images/logos/linkedin.svg',
      url: 'https://www.linkedin.com/in/roni-paschoal/',
    ),
    ExternalMenu(
      icon: 'assets/images/logos/github.svg',
      url: 'https://github.com/ronipaschoal/',
    ),
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.addListener(() => _onScroll(_scrollController.offset));
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterBannerWidget(
      child: Scaffold(
        key: _drawerKey,
        extendBody: true,
        extendBodyBehindAppBar: true,
        drawer: MediaQueryHelper(context).isSmallScreen()
            ? HomeDrawerWidget(
                drawerKey: _drawerKey,
                scrollController: _scrollController,
                menuList: _menuList,
                externalMenuList: _externalMenuList,
              )
            : null,
        appBar: MediaQueryHelper(context).isSmallScreen()
            ? AppBar(
                backgroundColor: RpTheme.menuColor,
                leading: IconButton(
                  icon: const RpLogoWidget.menu(),
                  onPressed: () => _drawerKey.currentState?.openDrawer(),
                  tooltip:
                      MaterialLocalizations.of(context).openAppDrawerTooltip,
                ),
              )
            : AppBar(
                backgroundColor: RpTheme.menuColor,
                title: const RpLogoWidget(size: Size(36.0, 36.0)),
                actions: [
                  HomeMenuWidget(
                    drawerKey: _drawerKey,
                    scrollController: _scrollController,
                    menuList: _menuList,
                    externalMenuList: _externalMenuList,
                  ),
                  RpTheme.spacerLarge,
                ],
              ),
        body: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              HomeSection(key: _getKeyByTitle(HomeSectionEnum.home)),
              AboutSection(key: _getKeyByTitle(HomeSectionEnum.about)),
              WorkSection(key: _getKeyByTitle(HomeSectionEnum.programs)),
              ContactSection(key: _getKeyByTitle(HomeSectionEnum.contact)),
            ],
          ),
        ),
      ),
    );
  }

  Key _getKeyByTitle(HomeSectionEnum title) {
    return _menuList.firstWhere((menu) => menu.title == title).key;
  }

  void _onScroll(double controllerHeight) {
    for (var menu in _menuList) {
      final wasActive = menu.isActive;
      menu.activeMenu(controllerHeight);
      if (wasActive != menu.isActive) setState(() {});
    }
  }
}
