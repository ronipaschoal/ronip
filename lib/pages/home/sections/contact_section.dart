import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/ui/theme.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

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
              AppLocalizations.of(context)!.getInTouch,
              semanticsLabel: AppLocalizations.of(context)!.getInTouch,
              style: TextStyle(
                color: RpTheme.witheColor,
                fontSize: 42.0,
              ),
            ),
            const SelectableText(
              'contato@ronip.dev',
              semanticsLabel: 'contato@ronip.dev',
              style: TextStyle(
                color: RpTheme.witheColor,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
