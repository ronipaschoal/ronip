import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
  final List<HomeMenu> previousMenuList;
  bool isActive;

  HomeMenu({
    required this.key,
    required this.title,
    this.previousMenuList = const [],
    this.isActive = false,
  });

  double get size => key.currentContext?.size?.height ?? 0.0;

  double get position => previousMenuList.fold(
        0.0,
        (previous, element) => previous + element.size,
      );

  void activeMenu(double controllerHeight) {
    isActive =
        controllerHeight >= position && controllerHeight < position + size;
  }

  void selectSection({
    required GlobalKey<ScaffoldState> drawerKey,
    required ScrollController scrollController,
  }) {
    drawerKey.currentState?.closeDrawer();
    scrollController.animateTo(
      position,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
