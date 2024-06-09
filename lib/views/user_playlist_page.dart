import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:spotify_playlist/controllers/main_navigator_controller.dart';
import 'package:spotify_playlist/controllers/user_playlist_controller.dart';
import 'package:spotify_playlist/models/playlist_user_model.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/page_name_enum.dart';
import 'package:spotify_playlist/utils/size_config.dart';
import 'package:spotify_playlist/utils/text_style_config.dart';

class UserPlaylistPage extends StatelessWidget {
  const UserPlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserPlaylistController userPlaylistController =
        Get.put(UserPlaylistController());
    userPlaylistController.fetchUserPlaylist();
    return Column(
      children: [
        appBar(userPlaylistController),
        Expanded(
            child: Obx(() => ListView.builder(
                itemCount: userPlaylistController.playList.length,
                itemBuilder: (context, index) =>
                    itemPlaylist(userPlaylistController.playList[index]))))
      ],
    );
  }

  Widget appBar(UserPlaylistController userPlaylistController) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              final MainNavigatorController mainNavigatorController =
                  Get.find();
              mainNavigatorController.changePage(PageName.home);
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 16,
              ),
            ),
          ),
          const Expanded(
            child: SizedBox(
              height: 32,
              child: Text('Your playlist'),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.add_circle_outline,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget itemPlaylist(PlaylistUserModel playlistUserModel) {
    return GestureDetector(
      onTap: () {
        // final MainNavigatorController mainNavigatorController = Get.find();
        // mainNavigatorController
        //     .changePage(PageName.detail, valueToOtherPage: [albumSearchModel]);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Row(children: [
          Image.network(
            playlistUserModel.images.first.url,
            width: SizeConfig.imageSmallSize,
            height: SizeConfig.imageSmallSize,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        playlistUserModel.name,
                        style: TextStyleConfig.normalWhiteStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        playlistUserModel.description,
                        style: TextStyleConfig.normalWhiteStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.more_vert,
              color: ColorConfig.white,
              size: SizeConfig.fontNormalSize,
            ),
          )
        ]),
      ),
    );
  }
}
