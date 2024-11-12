import 'package:flutter/material.dart';
import 'package:ronip/ui/theme.dart';
import 'package:ronip/ui/widgets/image_widget.dart';

class RpLogoWidget extends StatelessWidget {
  final Size size;
  final Color? color;
  final String asset;
  final EdgeInsets padding;

  const RpLogoWidget({
    super.key,
    this.size = const Size(80.0, 80.0),
    this.color,
    this.asset = 'assets/images/logos/logo.png',
    this.padding = const EdgeInsets.all(1.0),
  });

  const RpLogoWidget.menu({
    super.key,
    this.size = const Size(36.0, 36.0),
    this.color,
    this.asset = 'assets/images/logos/logo-menu.png',
    this.padding = const EdgeInsets.all(0.4),
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: padding,
          child: RpImageWidget(
            asset: asset,
            width: size.width,
            height: size.height,
            color: RpTheme.brandColor,
          ),
        ),
        RpImageWidget(
          asset: asset,
          width: size.width,
          height: size.height,
        ),
      ],
    );
  }
}
