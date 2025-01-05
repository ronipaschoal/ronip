import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/pages/home/widgets/home_section_widget.dart';
import 'package:ronip/ui/theme.dart';
import 'package:ronip/ui/widgets/logo_widget.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeSectionWidget(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const RpLogoWidget(),
          RpTheme.spacerLarge,
          SelectableText(
            AppLocalizations.of(context)!.wellcome,
            semanticsLabel: AppLocalizations.of(context)!.wellcome,
            style: const TextStyle(fontSize: RpTheme.fontSizeMedium),
          ),
          RpTheme.spacerSmallX,
          const SelectableText(
            'Roni Paschoal',
            semanticsLabel: 'Roni Paschoal',
            style: TextStyle(
              fontFamily: 'Inkburrow',
              fontSize: RpTheme.fontSizeLarge,
              color: RpTheme.textHighlightColor,
            ),
          ),
          RpTheme.spacerSmallX,
          SelectableText(
            AppLocalizations.of(context)!.flutterSpecialist,
            semanticsLabel: AppLocalizations.of(context)!.flutterSpecialist,
            style: const TextStyle(fontSize: RpTheme.fontSizeMedium),
          ),
          RpTheme.spacerLargeX2,
        ],
      ),
    );
  }
}
