import 'package:flutter/material.dart';
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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SelectableText(
              'Contact',
              semanticsLabel: 'Contact',
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
