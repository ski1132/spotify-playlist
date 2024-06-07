import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:spotify_playlist/controllers/album_search_controller.dart';
import 'package:spotify_playlist/controllers/main_navigator_controller.dart';
import 'package:spotify_playlist/models/album_search_model.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/page_name_enum.dart';
import 'package:spotify_playlist/utils/text_style_config.dart';
import 'package:spotify_playlist/widgets/text_form_field_app.dart';

class AlbumSearchPage extends StatelessWidget {
  const AlbumSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AlbumSearchController albumSearchController =
        Get.put(AlbumSearchController());
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  final MainNavigatorController mainNavigatorController =
                      Get.find();
                  mainNavigatorController.currentPage(PageName.home);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 16,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextFormFieldApp(
                  controller: albumSearchController.searchFieldController,
                  suffixIcon: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.close,
                        color: ColorConfig.white,
                      )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  final MainNavigatorController mainNavigatorController =
                      Get.find();
                  mainNavigatorController.currentPage(PageName.search);
                },
                child: const Icon(
                  Icons.mic,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Expanded(
            child: Obx(() => ListView.builder(
                itemCount: albumSearchController.albumSearchList.length,
                itemBuilder: (context, index) =>
                    itemAlbum(albumSearchController.albumSearchList[index]))))
      ],
    );
  }

  Widget itemAlbum(AlbumSearchModel albumSearchModel) {
    return Container(
      child: Row(),
    );
  }
}
