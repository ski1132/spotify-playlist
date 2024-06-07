import 'package:flutter/material.dart';
import 'package:spotify_playlist/utils/color_config.dart';

class TextStyleConfig {
  static const fontSizeNormal = 16.0;
  static const fontSizeSmall = 12.0;
  static const normalWhiteStyle = TextStyle(
    fontSize: fontSizeNormal,
    color: ColorConfig.white,
  );
  static const boldWhiteStyle = TextStyle(
      fontSize: fontSizeNormal,
      color: ColorConfig.white,
      fontWeight: FontWeight.bold);
  static const smallGrayStyle = TextStyle(
    fontSize: fontSizeSmall,
    color: ColorConfig.grey,
  );
  static const normalGrayStyle = TextStyle(
    fontSize: fontSizeNormal,
    color: ColorConfig.grey,
  );
}
