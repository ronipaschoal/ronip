import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/helpers/hyperlink_helper.dart';
import 'package:ronip/helpers/media_query_helper.dart';
import 'package:ronip/model/home_menu_model.dart';
import 'package:ronip/pages/home/widgets/home_contact_item_widget.dart';
import 'package:ronip/pages/home/widgets/home_section_title_widget.dart';
import 'package:ronip/pages/home/widgets/home_section_widget.dart';
import 'package:ronip/ui/theme.dart';

class ContactSection extends StatelessWidget {
  final List<ExternalMenu> externalMenuList;

  const ContactSection({
    super.key,
    required this.externalMenuList,
  });

  @override
  Widget build(BuildContext context) {
    return HomeSectionWidget(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          HomeSectionTitleWidget(
            title: AppLocalizations.of(context)!.getInTouch,
          ),
          Text(AppLocalizations.of(context)!.sayHello),
          RpTheme.spacerLarge,
          MediaQueryHelper(context).isSmallScreen()
              ? Column(
                  children: [
                    HomeContactItemWidget(
                      text: 'contato@ronip.dev',
                      icon: const Icon(
                        Icons.email,
                        color: RpTheme.textColor,
                        size: RpTheme.fontSizeLarge,
                      ),
                      onPressed: () => HyperlinkHelper.mail(
                        'mailto:contato@ronip.dev?subject=Website contact!',
                      ),
                    ),
                    ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemCount: externalMenuList.length,
                      itemBuilder: (_, index) {
                        final externalMenu = externalMenuList[index];
                        return HomeContactItemWidget(
                          text: externalMenu.text,
                          icon: externalMenu.iconWidget(
                            const Size(
                              RpTheme.fontSizeLarge,
                              RpTheme.fontSizeLarge,
                            ),
                          ),
                          onPressed: externalMenu.goToExternal,
                        );
                      },
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    HomeContactItemWidget(
                      text: 'contato@ronip.dev',
                      icon: const Icon(
                        Icons.email,
                        color: RpTheme.textColor,
                        size: RpTheme.fontSizeLarge,
                      ),
                      onPressed: () => HyperlinkHelper.mail(
                        'mailto:contato@ronip.dev?subject=Website contact!',
                      ),
                    ),
                    SizedBox(
                      height: 160.0,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: externalMenuList.length,
                        itemBuilder: (_, index) {
                          final externalMenu = externalMenuList[index];
                          return HomeContactItemWidget(
                            text: externalMenu.text,
                            icon: externalMenu.iconWidget(
                              const Size(
                                RpTheme.fontSizeLarge,
                                RpTheme.fontSizeLarge,
                              ),
                            ),
                            onPressed: externalMenu.goToExternal,
                          );
                        },
                        separatorBuilder: (_, __) => RpTheme.spacerSmallX,
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
