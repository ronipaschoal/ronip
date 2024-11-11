import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ronip/helpers/hyperlink_helper.dart';
import 'package:ronip/helpers/media_query_helper.dart';
import 'package:ronip/model/home_menu.dart';
import 'package:ronip/pages/home/sections/home_section.dart';
import 'package:ronip/pages/home/widgets/home_drawer.dart';
import 'package:ronip/pages/home/widgets/home_web_menu.dart';
import 'package:ronip/pages/home/sections/about_section.dart';
import 'package:ronip/pages/home/sections/contact_section.dart';
import 'package:ronip/pages/home/sections/work_section.dart';
import 'package:ronip/ui/theme.dart';
import 'package:ronip/ui/widgets/asset_image.dart';
import 'package:ronip/ui/widgets/flutter_banner.dart';
import 'package:ronip/ui/widgets/logo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  final _drawerKey = GlobalKey<ScaffoldState>();
  final _scrollController = ScrollController();

  late final homeMenu = HomeMenu(
    key: GlobalKey(),
    title: HomeSectionEnum.home,
    isActive: true,
  );

  late final aboutMenu = HomeMenu(
    key: GlobalKey(),
    title: HomeSectionEnum.about,
    previousMenuList: [homeMenu],
  );

  late final programsMenu = HomeMenu(
    key: GlobalKey(),
    title: HomeSectionEnum.programs,
    previousMenuList: [homeMenu, aboutMenu],
  );

  late final contactMenu = HomeMenu(
    key: GlobalKey(),
    title: HomeSectionEnum.contact,
    previousMenuList: [homeMenu, aboutMenu, programsMenu],
  );

  late final menuList = [
    homeMenu,
    aboutMenu,
    programsMenu,
    contactMenu,
  ];

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.addListener(() => _onScroll(_scrollController.offset));
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: RpFlutterBanner(
        child: Scaffold(
          key: _drawerKey,
          extendBody: true,
          extendBodyBehindAppBar: true,
          drawer: MediaQueryHelper(context).isSmallScreen()
              ? HomeDrawer(
                  drawerKey: _drawerKey,
                  scrollController: _scrollController,
                  menuList: menuList,
                  externalMenuList: [
                    IconButton(
                      onPressed: () => HyperlinkHelper //
                          .targetBlank(
                        'https://www.linkedin.com/in/roni-paschoal/',
                      ),
                      icon: SvgPicture.asset(
                        'assets/images/logos/linkedin.svg',
                        width: 16,
                        height: 16,
                        colorFilter: const ColorFilter.mode(
                          RpTheme.witheColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () => HyperlinkHelper //
                          .targetBlank('https://github.com/ronipaschoal/'),
                      icon: SvgPicture.asset(
                        'assets/images/logos/github.svg',
                        width: 16,
                        height: 16,
                        colorFilter: const ColorFilter.mode(
                          RpTheme.witheColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ],
                )
              : null,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: MediaQueryHelper(context).isSmallScreen()
                ? null
                : const Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(25.0),
                        child: SizedBox(
                          width: 36.0,
                          child: RpLogo(
                            color: RpTheme.brandColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(24.0),
                        child: SizedBox(
                          width: 36.0,
                          child: RpLogo(),
                        ),
                      ),
                    ],
                  ),
            leading: MediaQueryHelper(context).isSmallScreen()
                ? Builder(
                    builder: (BuildContext context) {
                      return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: IconButton(
                              icon: const RpAssetImage(
                                asset: 'assets/images/logos/logo-menu.png',
                                color: RpTheme.brandColor,
                              ),
                              onPressed: () =>
                                  _drawerKey.currentState?.openDrawer(),
                              tooltip: MaterialLocalizations.of(context)
                                  .openAppDrawerTooltip,
                            ),
                          ),
                          IconButton(
                            icon: const RpAssetImage(
                              asset: 'assets/images/logos/logo-menu.png',
                            ),
                            onPressed: () =>
                                _drawerKey.currentState?.openDrawer(),
                            tooltip: MaterialLocalizations.of(context)
                                .openAppDrawerTooltip,
                          ),
                        ],
                      );
                    },
                  )
                : null,
            backgroundColor: Colors.transparent,
            actions: MediaQueryHelper(context).isSmallScreen()
                ? null
                : [
                    HomeWebMenu(
                      drawerKey: _drawerKey,
                      scrollController: _scrollController,
                      menuList: menuList,
                      externalMenuList: [
                        IconButton(
                          onPressed: () => HyperlinkHelper //
                              .targetBlank(
                            'https://www.linkedin.com/in/roni-paschoal/',
                          ),
                          icon: SvgPicture.asset(
                            'assets/images/logos/linkedin.svg',
                            width: 16,
                            height: 16,
                            colorFilter: const ColorFilter.mode(
                              RpTheme.witheColor,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                        IconButton(
                          onPressed: () => HyperlinkHelper //
                              .targetBlank(
                            'https://github.com/ronipaschoal/',
                          ),
                          icon: SvgPicture.asset(
                            'assets/images/logos/github.svg',
                            width: 16,
                            height: 16,
                            colorFilter: const ColorFilter.mode(
                              RpTheme.witheColor,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ],
                    ),
                    RpTheme.spacerLarge,
                    const SizedBox(width: 42.0),
                  ],
          ),
          body: SingleChildScrollView(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                HomeSection(
                  key: _getMenuByTitle(HomeSectionEnum.home).key,
                ),
                AboutSection(
                  key: _getMenuByTitle(HomeSectionEnum.about).key,
                ),
                WorkSection(
                  key: _getMenuByTitle(HomeSectionEnum.programs).key,
                ),
                ContactSection(
                  key: _getMenuByTitle(HomeSectionEnum.contact).key,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  HomeMenu _getMenuByTitle(HomeSectionEnum title) {
    return menuList.firstWhere((menu) => menu.title == title);
  }

  void _onScroll(double controllerHeight) {
    for (var menu in menuList) {
      final wasActive = menu.isActive;
      menu.activeMenu(controllerHeight);
      if (wasActive != menu.isActive) setState(() {});
    }
  }
}
