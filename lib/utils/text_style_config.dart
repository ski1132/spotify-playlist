import 'package:flutter/material.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/size_config.dart';

class TextStyleConfig {
  static const smallWhiteStyle = TextStyle(
    fontSize: SizeConfig.fontSmallSize,
    color: ColorConfig.white,
  );
  static const normalWhiteStyle = TextStyle(
    fontSize: SizeConfig.fontNormalSize,
    color: ColorConfig.white,
  );
  static const largeWhiteStyle =
      TextStyle(fontSize: SizeConfig.fontLargeSize, color: ColorConfig.white);
  static const smallGrayStyle = TextStyle(
    fontSize: SizeConfig.fontSmallSize,
    color: ColorConfig.grey,
  );
  static const normalGrayStyle = TextStyle(
    fontSize: SizeConfig.fontNormalSize,
    color: ColorConfig.grey,
  );
}
