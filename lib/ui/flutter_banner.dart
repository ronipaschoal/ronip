import 'package:flutter/material.dart';

class RpFlutterBanner extends StatelessWidget {
  final Widget child;

  const RpFlutterBanner({
    super.key,
    required this.child,
  });

  static const String _message = 'Flutter';
  static const Color _bannerColor = Colors.blue;

  Widget get _body {
    return Banner(
      location: BannerLocation.topEnd,
      message: _message,
      color: _bannerColor,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) => _body;
}
