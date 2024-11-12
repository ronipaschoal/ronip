import 'package:flutter/material.dart';
import 'package:ronip/ui/theme.dart';

class SectionTitleWidget extends StatelessWidget {
  final String title;

  const SectionTitleWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectableText(
          title,
          semanticsLabel: title,
          style: const TextStyle(fontSize: RpTheme.fontSizeLarge),
          textAlign: TextAlign.center,
        ),
        RpTheme.spacerSmall,
        Center(
          child: Container(
            height: 2.0,
            width: 42.0,
            color: RpTheme.brandColor,
          ),
        ),
        RpTheme.spacerLargeX,
      ],
    );
  }
}
