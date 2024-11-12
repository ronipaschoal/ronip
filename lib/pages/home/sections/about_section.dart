import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/pages/home/widgets/section_title_widget.dart';
import 'package:ronip/pages/home/widgets/section_widget.dart';
import 'package:ronip/ui/theme.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      child: Column(
        children: [
          SectionTitleWidget(title: AppLocalizations.of(context)!.aboutMe),
          SelectableText(
            AppLocalizations.of(context)!.hybridTechnologyEnthusiast,
            semanticsLabel:
                AppLocalizations.of(context)!.hybridTechnologyEnthusiast,
            textAlign: TextAlign.justify,
          ),
          RpTheme.spacerLarge,
          SelectableText(
            AppLocalizations.of(context)!.totvsMobileApps,
            semanticsLabel: AppLocalizations.of(context)!.totvsMobileApps,
            textAlign: TextAlign.justify,
          ),
          RpTheme.spacerLarge,
          SelectableText(
            AppLocalizations.of(context)!.letSConnect,
            semanticsLabel: AppLocalizations.of(context)!.letSConnect,
            textAlign: TextAlign.justify,
          ),
          RpTheme.spacerLarge,
        ],
      ),
    );
  }
}
