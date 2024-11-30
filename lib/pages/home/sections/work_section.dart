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
      'url': 'https://ronipaschoal.com.br/angular/',
      'image': 'assets/images/photos/site-roni-paschoal-angularjs.png',
    },
    {
      'title': 'Eremita do Iceberg',
      'url': 'https://eremitajs.ronipaschoal.com.br/',
      'image': 'assets/images/photos/jogo-js-o-eremita-do-iceberg.png',
    },
    {
      'title': 'Reali Plásticos',
      'url': 'https://www.realiplasticos.com.br/',
      'image': 'assets/images/photos/site-reali-plasticos.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
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
                    onPressed: () => HyperlinkHelper.targetBlank(work['url']!),
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
