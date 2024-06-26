import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/ui/theme.dart';
import 'package:ronip/ui/widgets/logo.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const RpLogo(),
          RpTheme.spacerLarge,
          SelectableText(
            AppLocalizations.of(context)!.wellcome,
            semanticsLabel: AppLocalizations.of(context)!.wellcome,
            style: const TextStyle(fontSize: RpTheme.fontSizeMedium),
          ),
          RpTheme.spacerXS,
          const SelectableText(
            'Roni Paschoal',
            semanticsLabel: 'Roni Paschoal',
            style: TextStyle(
              fontFamily: 'Inkburrow',
              fontSize: RpTheme.fontSizeLarge,
            ),
          ),
          RpTheme.spacerXS,
          SelectableText(
            AppLocalizations.of(context)!.flutterSpecialist,
            semanticsLabel: AppLocalizations.of(context)!.flutterSpecialist,
            style: const TextStyle(fontSize: RpTheme.fontSizeMedium),
          ),
        ],
      ),
    );
  }
}
