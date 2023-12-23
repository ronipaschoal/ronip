import 'package:flutter/widgets.dart';

class MediaQueryHelper {
  BuildContext context;

  MediaQueryHelper(this.context);

  bool isSmallScreen() => MediaQuery.sizeOf(context).width < 600;
}
