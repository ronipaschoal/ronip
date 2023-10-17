import 'package:flutter/material.dart';
import 'package:ronip/config/navigate.dart';
import 'package:ronip/config/routes.dart';
import 'package:ronip/ui/logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _body(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const RpLogo(),
        const SizedBox(height: 16.0),
        const SelectableText(
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

  @override
  Widget build(BuildContext context) => _body(context);
}
