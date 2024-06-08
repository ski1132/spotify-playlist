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
  static const boldWhiteStyle = TextStyle(
      fontSize: SizeConfig.fontNormalSize,
      color: ColorConfig.white,
      fontWeight: FontWeight.bold);
  static const smallGrayStyle = TextStyle(
    fontSize: SizeConfig.fontSmallSize,
    color: ColorConfig.grey,
  );
  static const normalGrayStyle = TextStyle(
    fontSize: SizeConfig.fontNormalSize,
    color: ColorConfig.grey,
  );
}
