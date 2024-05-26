import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class RpAssetImage extends StatelessWidget {
  final String asset;
  final double? width;
  final double? height;
  final Color? color;
  final BlendMode? colorBlendMode;

  const RpAssetImage({
    super.key,
    required this.asset,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
  });

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return Image.network(
        asset,
        width: width,
        height: height,
      );
    }

    return Image.asset(
      asset,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
    );
  }
}
