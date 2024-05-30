import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/helpers/hyperlink_helper.dart';
import 'package:ronip/helpers/media_query_helper.dart';
import 'package:ronip/ui/theme.dart';
import 'package:ronip/ui/widgets/asset_image.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            AppLocalizations.of(context)!.myPrograms,
            semanticsLabel: AppLocalizations.of(context)!.programs,
            style: const TextStyle(fontSize: RpTheme.fontSizeLarge),
            textAlign: TextAlign.center,
          ),
          RpTheme.spacerLarge,
          MediaQueryHelper(context).isSmallScreen()
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => HyperlinkHelper //
                          .targetBlank('https://ronipaschoal.com.br/eremita/'),
                      icon: const Column(
                        children: [
                          RpAssetImage(
                            asset: 'assets/images/logos/eremita.png',
                            width: 128.0,
                          ),
                          Text('Eremita do Iceberg'),
                        ],
                      ),
                    ),
                    RpTheme.spacerLarge,
                    IconButton(
                      onPressed: () => HyperlinkHelper //
                          .targetBlank('https://www.realiplasticos.com.br/'),
                      icon: const Column(
                        children: [
                          RpAssetImage(
                            asset: 'assets/images/logos/reali-plasticos.png',
                            width: 128.0,
                          ),
                          Text('Reali Plásticos'),
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => HyperlinkHelper //
                          .targetBlank('https://ronipaschoal.com.br/eremita/'),
                      icon: const Column(
                        children: [
                          RpAssetImage(
                            asset: 'assets/images/logos/eremita.png',
                            width: 128.0,
                          ),
                          Text('Eremita do Iceberg'),
                        ],
                      ),
                    ),
                    RpTheme.spacerLarge,
                    IconButton(
                      onPressed: () => HyperlinkHelper //
                          .targetBlank('https://www.realiplasticos.com.br/'),
                      icon: const Column(
                        children: [
                          RpAssetImage(
                            asset: 'assets/images/logos/reali-plasticos.png',
                            width: 128.0,
                          ),
                          Text('Reali Plásticos'),
                        ],
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
