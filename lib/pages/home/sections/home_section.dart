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
      child: Container(
        color: RpTheme.backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const RpLogo(),
            const SizedBox(height: 16.0),
            SelectableText(
              AppLocalizations.of(context)!.wellcome,
              semanticsLabel: AppLocalizations.of(context)!.wellcome,
              style: const TextStyle(
                color: RpTheme.witheColor,
                fontSize: 24.0,
              ),
            ),
            const SelectableText(
              'Roni Paschoal',
              semanticsLabel: 'Roni Paschoal',
              style: TextStyle(
                fontFamily: 'Inkburrow',
                color: RpTheme.witheColor,
                fontSize: 42.0,
              ),
            ),
            SelectableText(
              AppLocalizations.of(context)!.flutterSpecialist,
              semanticsLabel: AppLocalizations.of(context)!.flutterSpecialist,
              style: const TextStyle(
                color: RpTheme.witheColor,
                fontSize: 24.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
