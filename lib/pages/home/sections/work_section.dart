import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/helpers/hyperlink_helper.dart';
import 'package:ronip/ui/theme.dart';
import 'package:ronip/ui/widgets/asset_image.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Container(
        color: RpTheme.backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(
              AppLocalizations.of(context)!.work,
              semanticsLabel: AppLocalizations.of(context)!.work,
              style: const TextStyle(
                color: RpTheme.witheColor,
                fontSize: 42.0,
              ),
            ),
            const SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => HyperlinkHelper.targetBlank(
                    'https://ronipaschoal.com.br/eremita/',
                  ),
                  icon: const Column(
                    children: [
                      RpAssetImage(
                        asset: 'assets/images/logos/eremita.png',
                        width: 128.0,
                      ),
                      Text(
                        'Eremita do Iceberg',
                        style: TextStyle(color: RpTheme.witheColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 32.0),
                IconButton(
                  onPressed: () => HyperlinkHelper.targetBlank(
                    'https://www.realiplasticos.com.br/',
                  ),
                  icon: const Column(
                    children: [
                      RpAssetImage(
                        asset: 'assets/images/logos/reali-plasticos.png',
                        width: 128.0,
                      ),
                      Text(
                        'Reali Plásticos',
                        style: TextStyle(color: RpTheme.witheColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
