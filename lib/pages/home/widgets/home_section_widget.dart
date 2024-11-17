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
      padding: const EdgeInsets.all(42.0),
      child: Center(
        child: SizedBox(
          width: MediaQueryHelper(context).isSmallScreen()
              ? null
              : MediaQuery.sizeOf(context).width * 0.8,
          child: widget.child,
        ),
      ),
    );
  }
}
