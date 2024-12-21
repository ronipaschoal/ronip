import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/helpers/hyperlink_helper.dart';
import 'package:ronip/pages/home/widgets/home_section_title_widget.dart';
import 'package:ronip/pages/home/widgets/home_section_widget.dart';
import 'package:ronip/ui/theme.dart';
import 'package:ronip/ui/widgets/image_widget.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  static const _workList = [
    {
      'title': 'Angular',
      'url': 'https://angular.ronipaschoal.com.br/',
      'image': 'assets/images/photos/site-roni-paschoal-angularjs.png',
    },
    {
      'title': 'Flutter, Eremita do Iceberg',
      'url': 'https://eremitaflutter.ronipaschoal.com.br/',
      'image': 'assets/images/photos/flutter-o-eremita-do-iceberg.png',
    },
    {
      'title': 'Reali Plásticos',
      'url': 'https://www.realiplasticos.com.br/',
      'image': 'assets/images/photos/site-reali-plasticos.png',
    },
    {
      'title': 'App Flutter, Minha Comanda Eletrônica',
      'url':
          'https://play.google.com/store/apps/details?id=com.totvs.thex.minhacomanda',
      'urlApple':
          'https://apps.apple.com/br/app/minha-comanda-eletr%C3%B4nica/id6474201107',
      'image': 'assets/images/photos/minha-comanda-digital.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;
    final isMacOS = Theme.of(context).platform == TargetPlatform.macOS;

    return HomeSectionWidget(
      child: Column(
        children: [
          HomeSectionTitleWidget(
            title: AppLocalizations.of(context)!.myPrograms,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            itemCount: _workList.length,
            itemBuilder: (ctx, index) {
              final work = _workList[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () => (isIOS || isMacOS) &&
                            work['urlApple']?.isNotEmpty != null
                        ? HyperlinkHelper.targetBlank(work['urlApple']!)
                        : HyperlinkHelper.targetBlank(work['url']!),
                    icon: Column(
                      children: [
                        RpImageWidget(
                          asset: work['image']!,
                          width: 700.0,
                        ),
                        Text(work['title']!),
                      ],
                    ),
                  ),
                ],
              );
            },
            separatorBuilder: (_, __) => RpTheme.spacerLarge,
          ),
        ],
      ),
    );
  }
}
