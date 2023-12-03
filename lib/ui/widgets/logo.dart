import 'package:flutter/material.dart';

class RpLogo extends StatelessWidget {
  final Size size;
  const RpLogo({
    super.key,
    this.size = const Size(80, 80),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width,
      height: size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/logos/logo.png'),
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
