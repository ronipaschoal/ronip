import 'package:flutter/material.dart';
import 'package:ronip/ui/widgets/flutter_banner.dart';

class RpScaffold extends StatelessWidget {
  final Widget child;

  const RpScaffold({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        color: const Color(0xFF000000),
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: RpFlutterBanner(
          child: Center(
            child: Container(
              constraints: const BoxConstraints(
                minWidth: 390.0,
                maxWidth: 1280.0,
              ),
              padding: const EdgeInsets.all(64.0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
