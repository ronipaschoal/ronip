import 'package:flutter/material.dart';
import 'package:ronip/helpers/media_query_helper.dart';

class HomeSectionWidget extends StatefulWidget {
  final Widget child;

  const HomeSectionWidget({
    super.key,
    required this.child,
  });

  @override
  State<HomeSectionWidget> createState() => _HomeSectionWidgetState();
}

class _HomeSectionWidgetState extends State<HomeSectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.sizeOf(context).height,
      ),
      padding: MediaQueryHelper(context).isSmallScreen()
          ? const EdgeInsets.symmetric(horizontal: 16.0)
          : const EdgeInsets.symmetric(horizontal: 48.0),
      child: MediaQueryHelper(context).isSmallScreen()
          ? SafeArea(child: widget.child)
          : Center(
              child: SizedBox(
                width: MediaQuery.sizeOf(context).width * 0.8,
                child: SafeArea(child: widget.child),
              ),
            ),
    );
  }
}
