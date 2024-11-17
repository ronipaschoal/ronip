import 'package:flutter/material.dart';
import 'package:ronip/ui/theme.dart';

class HomeContactItemWidget extends StatelessWidget {
  final String text;
  final Widget icon;
  final VoidCallback onPressed;

  const HomeContactItemWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 160.0,
        height: 160.0,
        child: IconButton(
          onPressed: onPressed,
          icon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              icon,
              RpTheme.spacerMedium,
              Text(
                text,
                style: const TextStyle(
                  color: RpTheme.textColor,
                  fontSize: RpTheme.fontSizeRegular,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
