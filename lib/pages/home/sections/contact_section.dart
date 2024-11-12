import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ronip/helpers/hyperlink_helper.dart';
import 'package:ronip/pages/home/widgets/section_title_widget.dart';
import 'package:ronip/pages/home/widgets/section_widget.dart';
import 'package:ronip/ui/theme.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      child: Column(
        children: [
          SectionTitleWidget(title: AppLocalizations.of(context)!.getInTouch),
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
