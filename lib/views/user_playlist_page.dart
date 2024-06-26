import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/controllers/main_navigator_controller.dart';
import 'package:spotify_playlist/controllers/user_playlist_controller.dart';
import 'package:spotify_playlist/models/playlist_user_model.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/page_name_enum.dart';
import 'package:spotify_playlist/utils/size_config.dart';
import 'package:spotify_playlist/utils/text_style_config.dart';
import 'package:spotify_playlist/widgets/button_config.dart';
import 'package:spotify_playlist/widgets/text_form_field_app.dart';

class UserPlaylistPage extends StatelessWidget {
  const UserPlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    UserPlaylistController userPlaylistController =
        Get.put(UserPlaylistController());
    userPlaylistController.resetValue();
    userPlaylistController.fetchUserPlaylist();
    return Column(
      children: [
        appBar(userPlaylistController),
        Expanded(
            child: Obx(() => ListView.builder(
                itemCount: userPlaylistController.playList.length + 1,
                itemBuilder: (context, index) =>
                    userPlaylistController.playList.length == index
                        ? loadMore(userPlaylistController)
                        : itemPlaylist(
                            userPlaylistController.playList.elementAt(index)))))
      ],
    );
  }

  Widget appBar(UserPlaylistController userPlaylistController) {
    return Padding(
      padding: const EdgeInsets.all(SizeConfig.fontNormalSize),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              final MainNavigatorController mainNavigatorController =
                  Get.find();
              mainNavigatorController.changePage(
                  PageName.featured, PageName.userPlaylist);
            },
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: SizeConfig.fontLargeSize,
              ),
            ),
          ),
          const Expanded(
            child: Text(
              'Your playlist',
              style: TextStyleConfig.largeWhiteStyle,
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: () {
              dialogCreatePlaylist(userPlaylistController);
            },
            child: const Icon(
              Icons.add,
              size: SizeConfig.fontJumboSize,
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
        final MainNavigatorController mainNavigatorController = Get.find();
        mainNavigatorController.changePage(
            PageName.userPlaylistDetail, PageName.userPlaylist,
            valueToOtherPage: [playlistUserModel]);
      },
      child: Container(
        padding: const EdgeInsets.all(SizeConfig.fontNormalSize),
        child: Row(children: [
          playlistUserModel.images == null
              ? Container(
                  width: SizeConfig.imageSmallSize,
                  height: SizeConfig.imageSmallSize,
                  color: ColorConfig.darkGrey,
                  child: const Icon(
                    Icons.music_note,
                    color: ColorConfig.white,
                    size: SizeConfig.fontLargeSize,
                  ),
                )
              : Image.network(
                  playlistUserModel.images!.first.url,
                  width: SizeConfig.imageSmallSize,
                  height: SizeConfig.imageSmallSize,
                ),
          const SizedBox(
            width: SizeConfig.fontNormalSize,
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
                    Text(
                      playlistUserModel.type.capitalizeFirst ??
                          playlistUserModel.type,
                      style: TextStyleConfig.normalWhiteStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Text(' • ', style: TextStyleConfig.normalGrayStyle),
                    Expanded(
                      child: Text(
                        '${playlistUserModel.tracks.total} Song',
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
          PopupMenuButton<int>(
            onSelected: (int item) {
              final MainNavigatorController mainNavigatorController =
                  Get.find();
              mainNavigatorController.changePage(
                  PageName.trackSearch, PageName.userPlaylist,
                  valueToOtherPage: [playlistUserModel]);
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
              const PopupMenuItem<int>(
                value: 0,
                child: Text('Add Song'),
              ),
            ],
            child: const Icon(
              Icons.more_vert,
              size: SizeConfig.fontJumboSize,
              color: ColorConfig.white,
            ),
          ),
        ]),
      ),
    );
  }

  dialogCreatePlaylist(UserPlaylistController userPlaylistController) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController descriptionController = TextEditingController();
    Get.dialog(Dialog(
      backgroundColor: ColorConfig.darkThemeAppColor,
      insetPadding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: ColorConfig.darkThemeAppColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Create playlist',
                style: TextStyleConfig.largeWhiteStyle,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: SizeConfig.fontLargeSize,
            ),
            const Text(
              'Name',
              style: TextStyleConfig.normalWhiteStyle,
            ),
            TextFormFieldApp(controller: nameController),
            const SizedBox(
              height: SizeConfig.fontNormalSize,
            ),
            const Text(
              'Description',
              style: TextStyleConfig.normalWhiteStyle,
            ),
            TextFormFieldApp(controller: descriptionController),
            const SizedBox(
              height: SizeConfig.fontNormalSize,
            ),
            Row(
              children: [
                const Spacer(),
                ButtonConfig(
                  onTap: () async {
                    await userPlaylistController.createUserPlaylist(
                        nameController.text, descriptionController.text);
                    Get.back();
                  },
                  backgroundColor: ColorConfig.darkGreyThemeAppColor,
                  child: const Text(
                    'Create',
                    style: TextStyleConfig.normalWhiteStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }

  Widget loadMore(UserPlaylistController userPlaylistController) {
    return userPlaylistController.enableLoadMoreButton.value &&
            userPlaylistController.playList.isNotEmpty
        ? GestureDetector(
            onTap: () => userPlaylistController.fetchUserPlaylist(),
            child: const Padding(
              padding: EdgeInsets.all(20.0),
              child: Icon(
                Icons.add_circle_outline,
                size: SizeConfig.imageSmallSize,
                color: ColorConfig.white,
              ),
            ),
          )
        : const SizedBox();
  }
}
