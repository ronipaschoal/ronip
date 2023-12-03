import 'package:flutter/material.dart';
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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(
              'About',
              semanticsLabel: 'About',
              style: TextStyle(
                color: RpTheme.witheColor,
                fontSize: 42.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
