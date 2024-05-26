import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/ui/theme.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 800.0),
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width * 0.8,
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
