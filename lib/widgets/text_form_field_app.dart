import 'package:flutter/material.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/text_style_config.dart';

class TextFormFieldApp extends StatelessWidget {
  final String? label;
  final TextEditingController controller;
  final Function(String)? onChange;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Function(String)? onSubmit;
  const TextFormFieldApp({
    super.key,
    required this.controller,
    this.label,
    this.onChange,
    this.suffixIcon,
    this.prefixIcon,
    this.onSubmit,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onChange,
      style: TextStyleConfig.normalWhiteStyle,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        fillColor: ColorConfig.darkGrey,
        filled: true,
      ),
      onSubmitted: onSubmit,
    );
  }
}
