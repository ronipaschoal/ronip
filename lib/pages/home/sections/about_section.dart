import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/ui/theme.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Container(
        color: RpTheme.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SelectableText(
                AppLocalizations.of(context)!.aboutMe,
                semanticsLabel: AppLocalizations.of(context)!.aboutMe,
                style: const TextStyle(
                  color: RpTheme.witheColor,
                  fontSize: 42.0,
                ),
              ),
              SelectableText(
                AppLocalizations.of(context)!.hybridTechnologyEnthusiast,
                semanticsLabel:
                    AppLocalizations.of(context)!.hybridTechnologyEnthusiast,
                style: const TextStyle(
                  color: RpTheme.witheColor,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 16.0),
              SelectableText(
                AppLocalizations.of(context)!.totvsMobileApps,
                semanticsLabel: AppLocalizations.of(context)!.totvsMobileApps,
                style: const TextStyle(
                  color: RpTheme.witheColor,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 16.0),
              SelectableText(
                AppLocalizations.of(context)!.letSConnect,
                semanticsLabel: AppLocalizations.of(context)!.letSConnect,
                style: const TextStyle(
                  color: RpTheme.witheColor,
                  fontSize: 16.0,
                ),
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }
}
