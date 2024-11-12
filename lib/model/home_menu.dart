import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ronip/helpers/hyperlink_helper.dart';
import 'package:ronip/ui/theme.dart';

enum HomeSectionEnum {
  home,
  about,
  programs,
  contact,
}

extension DiscountPageTypeExtensions on HomeMenu {
  String translate(BuildContext context) {
    switch (title) {
      case HomeSectionEnum.home:
        return AppLocalizations.of(context)!.home;
      case HomeSectionEnum.about:
        return AppLocalizations.of(context)!.about;
      case HomeSectionEnum.programs:
        return AppLocalizations.of(context)!.programs;
      case HomeSectionEnum.contact:
        return AppLocalizations.of(context)!.contact;
    }
  }
}

class HomeMenu {
  final GlobalKey key;
  final HomeSectionEnum title;
  bool isActive;
  final GlobalKey<ScaffoldState> drawerKey;
  final ScrollController scrollController;
  final List<HomeMenu> previousMenuList;

  HomeMenu({
    required this.key,
    required this.title,
    this.isActive = false,
    required this.drawerKey,
    required this.scrollController,
    this.previousMenuList = const [],
  });

  double get sectionSize => key.currentContext?.size?.height ?? 0.0;

  double get sectionPosition => previousMenuList.fold(
        0.0,
        (previous, element) => previous + element.sectionSize,
      );

  void activeMenu(double controllerHeight) {
    isActive = controllerHeight >= sectionPosition &&
        controllerHeight < sectionPosition + sectionSize;
  }

  void goToSection() {
    drawerKey.currentState?.closeDrawer();
    scrollController.animateTo(
      sectionPosition,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}

class ExternalMenu {
  final String icon;
  final String url;

  ExternalMenu({
    required this.icon,
    required this.url,
  });

  void goToExternal() {
    HyperlinkHelper.targetBlank(url);
  }

  Widget get iconWidget => SvgPicture.asset(
        icon,
        width: 16,
        height: 16,
        colorFilter: const ColorFilter.mode(
          RpTheme.textColor,
          BlendMode.srcIn,
        ),
      );
}
