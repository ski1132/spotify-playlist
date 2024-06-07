import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:spotify_playlist/controllers/main_navigator_controller.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/text_style_config.dart';
import 'package:spotify_playlist/views/featured_playlist_page.dart';

class MainNavigatorPage extends StatelessWidget {
  const MainNavigatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MainNavigatorController mainNavigatorController =
        Get.put(MainNavigatorController());
    return SafeArea(
        child: Scaffold(
      backgroundColor: ColorConfig.themeAppColor,
      appBar: AppBar(
        backgroundColor: ColorConfig.themeAppColor,
        title: const Row(
          children: [
            Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: 16,
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              'Mixed for you',
              style: TextStyleConfig.normalWhiteStyle,
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          CircleAvatar(
            backgroundColor: ColorConfig.orange,
            radius: 16,
            child: const Text(
              'S',
              style: TextStyleConfig.smallWhiteStyle,
            ),
          ),
          const SizedBox(
            width: 16,
          ),
        ],
      ),
      body: Obx(() => switch (mainNavigatorController.currentPage.value) {
            0 => const FeaturedPlaylistPage(),
            1 => const FeaturedPlaylistPage(),
            2 => const FeaturedPlaylistPage(),
            3 => const FeaturedPlaylistPage(),
            int() => throw UnimplementedError(),
          }),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: ColorConfig.themeAppColor,
          unselectedItemColor: ColorConfig.grey,
          selectedItemColor: ColorConfig.white,
          items: mainNavigatorController.bottomNavigatorList),
    ));
  }
}
