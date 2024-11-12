import 'package:flutter/material.dart';
import 'package:ronip/ui/theme.dart';

class MenuButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;
  final bool isActive;

  const MenuButtonWidget({
    super.key,
    required this.onPressed,
    required this.label,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: onPressed,
          child: Text(
            label,
            style: const TextStyle(
              color: RpTheme.textColor,
            ),
          ),
        ),
        if (isActive)
          Container(
            height: 2.0,
            width: 16.0,
            color: RpTheme.brandColor,
          ),
      ],
    );
  }
}
