import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/page_name_enum.dart';

class MainNavigatorController extends GetxController {
  Rx<PageName> currentPage = PageName.featured.obs;
  Rx<PageName> previousePage = PageName.featured.obs;
  List<dynamic> valueTranfer = [];
  RxInt indexBottomNavigator = 0.obs;

  final bottomNavigatorList = const [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: ColorConfig.grey,
        ),
        activeIcon: Icon(Icons.home, color: ColorConfig.white),
        label: 'Home'),
    BottomNavigationBarItem(
        icon: Icon(Icons.play_arrow, color: ColorConfig.grey),
        activeIcon: Icon(Icons.play_arrow, color: ColorConfig.white),
        label: 'Samples'),
    BottomNavigationBarItem(
        icon: Icon(Icons.explore_outlined, color: ColorConfig.grey),
        activeIcon: Icon(Icons.explore_outlined, color: ColorConfig.white),
        label: 'Explore'),
    BottomNavigationBarItem(
        icon: Icon(Icons.library_music_outlined, color: ColorConfig.grey),
        activeIcon:
            Icon(Icons.library_music_outlined, color: ColorConfig.white),
        label: 'Library')
  ];

  changePage(
    PageName nextPageName,
    PageName currentPageName, {
    List<dynamic>? valueToOtherPage,
  }) {
    currentPage(nextPageName);
    valueTranfer.clear();
    valueTranfer.addAll(valueToOtherPage ?? []);
    previousePage(currentPageName);
  }
}
