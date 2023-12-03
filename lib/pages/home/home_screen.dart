import 'package:flutter/material.dart';
import 'package:ronip/config/navigate.dart';
import 'package:ronip/config/routes.dart';
import 'package:ronip/ui/widgets/logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RpLogo(),
        SizedBox(height: 16.0),
        SelectableText(
          'Roni Paschoal',
          semanticsLabel: 'Roni Paschoal',
          style: TextStyle(
            fontFamily: 'Inkburrow',
            color: Colors.white,
            fontSize: 42.0,
          ),
        ),
      ],
    );
  }
}
