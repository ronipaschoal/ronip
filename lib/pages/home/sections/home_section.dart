import 'package:flutter/material.dart';
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
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RpLogo(),
            SizedBox(height: 16.0),
            SelectableText(
              'Olá, eu sou',
              semanticsLabel: 'Olá, eu sou',
              style: TextStyle(
                color: RpTheme.witheColor,
                fontSize: 24.0,
              ),
            ),
            SelectableText(
              'Roni Paschoal',
              semanticsLabel: 'Roni Paschoal',
              style: TextStyle(
                fontFamily: 'Inkburrow',
                color: RpTheme.witheColor,
                fontSize: 42.0,
              ),
            ),
            SelectableText(
              'Especialista Flutter',
              semanticsLabel: 'Olá, eu sou',
              style: TextStyle(
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
