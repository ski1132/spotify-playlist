import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/utils/color_config.dart';

class MainNavigatorController extends GetxController {
  RxInt currentPage = 0.obs;

  final bottomNavigatorList = const [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: ColorConfig.white,
        ),
        label: 'Home'),
    BottomNavigationBarItem(
        icon: Icon(Icons.play_arrow, color: ColorConfig.grey),
        label: 'Samples'),
    BottomNavigationBarItem(
        icon: Icon(Icons.explore_outlined, color: ColorConfig.grey),
        label: 'Explore'),
    BottomNavigationBarItem(
        icon: Icon(Icons.library_music_outlined, color: ColorConfig.grey),
        label: 'Library')
  ];
}
