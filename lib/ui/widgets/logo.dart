import 'package:flutter/material.dart';
import 'package:ronip/ui/widgets/asset_image.dart';

class RpLogo extends StatelessWidget {
  final Size size;
  final Color? color;

  const RpLogo({
    super.key,
    this.size = const Size(80, 80),
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return RpAssetImage(
      asset: 'assets/images/logos/logo.png',
      width: size.width,
      height: size.height,
      color: color,
    );
  }
}
