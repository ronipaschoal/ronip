import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/helpers/media_query_helper.dart';
import 'package:ronip/ui/theme.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.sizeOf(context).height,
      ),
      width: MediaQueryHelper(context).isSmallScreen()
          ? null
          : MediaQuery.sizeOf(context).width * 0.8,
      padding: const EdgeInsets.all(32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            AppLocalizations.of(context)!.aboutMe,
            semanticsLabel: AppLocalizations.of(context)!.aboutMe,
            style: const TextStyle(fontSize: RpTheme.fontSizeLarge),
            textAlign: TextAlign.center,
          ),
          Center(
            child: Container(
              height: 2.0,
              width: 64.0,
              color: RpTheme.brandColor,
            ),
          ),
          RpTheme.spacerLarge,
          SelectableText(
            AppLocalizations.of(context)!.hybridTechnologyEnthusiast,
            semanticsLabel:
                AppLocalizations.of(context)!.hybridTechnologyEnthusiast,
            textAlign: TextAlign.justify,
          ),
          RpTheme.spacerMedium,
          SelectableText(
            AppLocalizations.of(context)!.totvsMobileApps,
            semanticsLabel: AppLocalizations.of(context)!.totvsMobileApps,
            textAlign: TextAlign.justify,
          ),
          RpTheme.spacerMedium,
          SelectableText(
            AppLocalizations.of(context)!.letSConnect,
            semanticsLabel: AppLocalizations.of(context)!.letSConnect,
            textAlign: TextAlign.justify,
          ),
          RpTheme.spacerMedium,
        ],
      ),
    );
  }
}
