import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ronip/helpers/hyperlink_helper.dart';
import 'package:ronip/helpers/media_query_helper.dart';
import 'package:ronip/pages/home/home_drawer.dart';
import 'package:ronip/pages/home/home_menu.dart';
import 'package:ronip/pages/home/home_web_menu.dart';
import 'package:ronip/pages/home/sections/about_section.dart';
import 'package:ronip/pages/home/sections/contact_section.dart';
import 'package:ronip/pages/home/sections/home_section.dart';
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

  HomeMenu? homeMenu;

  final _homeKey = GlobalKey();
  final _aboutKey = GlobalKey();
  final _workKey = GlobalKey();
  final _contactKey = GlobalKey();

  double _homePosition = 0.0;
  double _aboutPosition = 0.0;
  double _workPosition = 0.0;
  double _contactPosition = 0.0;

  List<HomeMenu> _getMenuList() {
    return [
      HomeMenu(
        key: _homeKey,
        title: AppLocalizations.of(context)!.home,
        position: _homePosition,
        selectSection: _selectSection,
      ),
      HomeMenu(
        key: _aboutKey,
        title: AppLocalizations.of(context)!.about,
        position: _aboutPosition,
        selectSection: _selectSection,
      ),
      HomeMenu(
        key: _workKey,
        title: AppLocalizations.of(context)!.work,
        position: _workPosition,
        selectSection: _selectSection,
      ),
      HomeMenu(
        key: _contactKey,
        title: AppLocalizations.of(context)!.contact,
        position: _contactPosition,
        selectSection: _selectSection,
      ),
    ];
  }

  double _getSectionPosition(GlobalKey key) {
    final RenderObject? renderObject = key.currentContext?.findRenderObject();
    if (renderObject is RenderBox) {
      return renderObject.localToGlobal(Offset.zero).dy;
    }
    return 0;
  }

  void _selectSection(double position) {
    _drawerKey.currentState?.closeDrawer();
    _scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  List<Widget> _getExternalMenuList() {
    return [
      IconButton(
        onPressed: () => HyperlinkHelper.targetBlank(
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
    ];
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _homePosition = _getSectionPosition(_homeKey);
        _aboutPosition = _getSectionPosition(_aboutKey);
        _workPosition = _getSectionPosition(_workKey);
        _contactPosition = _getSectionPosition(_contactKey);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
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
                  menuList: _getMenuList(),
                  externalMenuList: _getExternalMenuList(),
                )
              : null,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: MediaQueryHelper(context).isSmallScreen()
                ? null
                : const SizedBox(
                    width: 48.0,
                    child: RpLogo(),
                  ),
            leading: MediaQueryHelper(context).isSmallScreen()
                ? Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        icon: const RpAssetImage(
                          asset: 'assets/images/logos/logo-menu.png',
                        ),
                        onPressed: () => _drawerKey.currentState?.openDrawer(),
                        tooltip: MaterialLocalizations.of(context)
                            .openAppDrawerTooltip,
                      );
                    },
                  )
                : null,
            backgroundColor: Colors.transparent,
            actions: MediaQueryHelper(context).isSmallScreen()
                ? null
                : [
                    HomeWebMenu(
                      menuList: _getMenuList(),
                      externalMenuList: _getExternalMenuList(),
                    ),
                    const SizedBox(width: 42.0)
                  ],
          ),
          body: SingleChildScrollView(
            controller: _scrollController,
            child: Column(
              children: [
                HomeSection(key: _homeKey),
                AboutSection(key: _aboutKey),
                WorkSection(key: _workKey),
                ContactSection(key: _contactKey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
