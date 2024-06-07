import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:spotify_playlist/controllers/main_navigator_controller.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/page_name_enum.dart';
import 'package:spotify_playlist/views/album_search_page.dart';
import 'package:spotify_playlist/views/featured_playlist_page.dart';

class MainNavigatorPage extends StatelessWidget {
  const MainNavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainNavigatorController mainNavigatorController =
        Get.put(MainNavigatorController());
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConfig.darkThemeAppColor,
      body: Obx(() => switch (mainNavigatorController.currentPage.value) {
            PageName.home => const FeaturedPlaylistPage(),
            PageName.search => const AlbumSearchPage(),
          }),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConfig.darkGreyThemeAppColor,
          unselectedItemColor: ColorConfig.grey,
          selectedItemColor: ColorConfig.white,
          items: mainNavigatorController.bottomNavigatorList),
    ));
  }
}
