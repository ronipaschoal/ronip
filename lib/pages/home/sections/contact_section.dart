import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/helpers/hyperlink_helper.dart';
import 'package:ronip/ui/theme.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.sizeOf(context).height,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            AppLocalizations.of(context)!.getInTouch,
            semanticsLabel: AppLocalizations.of(context)!.getInTouch,
            style: const TextStyle(fontSize: RpTheme.fontSizeLarge),
          ),
          Center(
            child: Container(
              height: 2.0,
              width: 64.0,
              color: RpTheme.brandColor,
            ),
          ),
          RpTheme.spacerLarge,
          TextButton(
            child: const Text(
              'contato@ronip.dev',
              style: TextStyle(
                color: RpTheme.textColor,
                fontSize: RpTheme.fontSizeRegular,
              ),
            ),
            onPressed: () => HyperlinkHelper.mail(
              'mailto:contato@ronip.dev?subject=Website contact!',
            ),
          ),
        ],
      ),
    );
  }
}
