import 'package:flutter/material.dart';
import 'package:ronip/ui/theme.dart';

class RpFlutterBanner extends StatelessWidget {
  final Widget child;

  const RpFlutterBanner({
    super.key,
    required this.child,
  });

  static const String _message = 'Flutter';
  static const Color _bannerColor = RpTheme.brandColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: RpTheme.backgroundColorDark,
      child: SafeArea(
        child: Banner(
          location: BannerLocation.topEnd,
          message: _message,
          color: _bannerColor,
          child: child,
        ),
      ),
    );
  }
}
