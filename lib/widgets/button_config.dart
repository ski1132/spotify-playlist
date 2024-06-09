import 'package:flutter/material.dart';
import 'package:spotify_playlist/utils/color_config.dart';

class ButtonConfig extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  final Function() onTap;
  const ButtonConfig(
      {super.key,
      required this.child,
      this.backgroundColor = ColorConfig.darkThemeAppColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: child,
      ),
    );
  }
}
