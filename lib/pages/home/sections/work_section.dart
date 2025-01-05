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
      'title': 'Roni Paschoal (V1)',
      'description': 'Site anterior desenvolvido em AngularJS.',
      'url': 'https://angular.ronipaschoal.com.br/',
      'image': 'assets/images/photos/site-roni-paschoal-angularjs.png',
    },
    {
      'title': 'O Eremita do Iceberg, Flutter',
      'description':
          'Estudo de animações nativas e gerenciamento de estados Bloc/Cubit, em Flutter.',
      'url': 'https://eremitaflutter.ronipaschoal.com.br/',
      'image': 'assets/images/photos/flutter-o-eremita-do-iceberg.png',
    },
    {
      'title': 'Reali Plásticos',
      'description':
          'Desenvolvimento em PHP, criação das imagens em 3d, UX e SEO do site institucional da empresa.',
      'url': 'https://www.realiplasticos.com.br/',
      'image': 'assets/images/photos/site-reali-plasticos.png',
    },
    {
      'title': 'Minha Comanda Eletrônica, App Flutter',
      'description':
          'Participação na concepção e desenvolvimento em Flutter (Android, IOS, Cielo, Rede e PagSeguro), MVVM e Bloc/Cubit.',
      'url':
          'https://play.google.com/store/apps/details?id=com.totvs.thex.minhacomanda',
      'urlApple':
          'https://apps.apple.com/br/app/minha-comanda-eletr%C3%B4nica/id6474201107',
      'image': 'assets/images/photos/minha-comanda.png',
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
              return Center(
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    IconButton(
                      onPressed: () => (isIOS || isMacOS) &&
                              work['urlApple']?.isNotEmpty != null
                          ? HyperlinkHelper.targetBlank(work['urlApple']!)
                          : HyperlinkHelper.targetBlank(work['url']!),
                      icon: RpImageWidget(
                        asset: work['image']!,
                        width: 700.0,
                      ),
                    ),
                    Positioned(
                      bottom: 16.0,
                      right: 16.0,
                      child: Container(
                        width: 320.0,
                        padding: const EdgeInsets.all(16.0),
                        color: RpTheme.backgroundColor.withAlpha(140),
                        child: Text(
                          '${work['title']!}\n\n${work['description']!}',
                          style: const TextStyle(
                            color: RpTheme.textHighlightColor,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (_, __) => RpTheme.spacerLarge,
          ),
        ],
      ),
    );
  }
}
