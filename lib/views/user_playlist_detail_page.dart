import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:spotify_playlist/controllers/main_navigator_controller.dart';
import 'package:spotify_playlist/controllers/user_playlist_detail_controller.dart';
import 'package:spotify_playlist/models/playlist_user_model.dart';
import 'package:spotify_playlist/models/track_search_model.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/page_name_enum.dart';
import 'package:spotify_playlist/utils/size_config.dart';
import 'package:spotify_playlist/utils/text_style_config.dart';

class UserPlaylistDetailPage extends StatelessWidget {
  final PlaylistUserModel playlistUserModel;
  final PageName previousePage;
  const UserPlaylistDetailPage(
      {super.key,
      required this.playlistUserModel,
      required this.previousePage});

  @override
  Widget build(BuildContext context) {
    UserPlaylistDetailController userPlaylistDetailController =
        Get.put(UserPlaylistDetailController());
    userPlaylistDetailController.fetchTrackList(playlistUserModel.id);
    return Column(
      children: [
        appBar(userPlaylistDetailController),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                imageAndButton(),
                Obx(() => userPlaylistDetailController.isLoading.value
                    ? const Padding(
                        padding: EdgeInsets.all(SizeConfig.fontJumboSize),
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        ),
                      )
                    : ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount:
                            userPlaylistDetailController.trackList.length,
                        itemBuilder: (context, index) => itemSong(
                            index,
                            userPlaylistDetailController.trackList
                                .elementAt(index)),
                      )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget appBar(UserPlaylistDetailController userPlaylistDetailController) {
    return Padding(
      padding: const EdgeInsets.all(SizeConfig.fontNormalSize),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              final MainNavigatorController mainNavigatorController =
                  Get.find();
              mainNavigatorController.changePage(
                  previousePage, PageName.userPlaylistDetail);
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
          const Spacer(),
          GestureDetector(
            onTap: () {
              final MainNavigatorController mainNavigatorController =
                  Get.find();
              mainNavigatorController.changePage(
                  PageName.trackSearch, PageName.userPlaylistDetail,
                  valueToOtherPage: [playlistUserModel]);
            },
            child: const Icon(
              Icons.search,
              color: Colors.white,
              size: SizeConfig.fontLargeSize,
            ),
          ),
        ],
      ),
    );
  }

  Widget imageAndButton() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        children: [
          playlistUserModel.images == null
              ? Container(
                  color: ColorConfig.darkThemeAppColor,
                  width: SizeConfig.halfWidthScreenSize,
                  height: SizeConfig.halfWidthScreenSize,
                  child: const Icon(
                    Icons.music_note,
                    size: SizeConfig.fontJumboSize,
                  ),
                )
              : Image.network(
                  playlistUserModel.images!.first.url,
                  width: SizeConfig.halfWidthScreenSize,
                  height: SizeConfig.halfWidthScreenSize,
                ),
          const SizedBox(
            height: 8,
          ),
          Text(
            playlistUserModel.name,
            style: TextStyleConfig.largeWhiteStyle,
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              roundButton(Icons.download),
              roundButton(Icons.library_add_outlined),
              roundButton(Icons.play_arrow, isPlayButton: true),
              roundButton(Icons.share),
              roundButton(Icons.more_vert),
            ],
          ),
        ],
      ),
    );
  }

  Widget roundButton(IconData iconData, {bool isPlayButton = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor:
            isPlayButton ? ColorConfig.white : ColorConfig.darkGrey,
        radius:
            isPlayButton ? SizeConfig.fontLargeSize : SizeConfig.fontNormalSize,
        child: Icon(
          iconData,
          size: isPlayButton
              ? SizeConfig.fontJumboSize
              : SizeConfig.fontNormalSize,
          color: isPlayButton ? ColorConfig.black : ColorConfig.white,
        ),
      ),
    );
  }

  Widget itemSong(int index, TrackSearchModel trackSearchModel) {
    final minute = trackSearchModel.durationMs / 1000 / 60;
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: 8.0, horizontal: SizeConfig.fontNormalSize),
      child: Row(
        children: [
          Text(
            (index + 1).toString(),
            style: TextStyleConfig.normalWhiteStyle,
          ),
          const SizedBox(
            width: SizeConfig.fontLargeSize,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  trackSearchModel.name,
                  style: TextStyleConfig.normalWhiteStyle,
                ),
                Row(
                  children: [
                    Text(
                      trackSearchModel.artists.first.name,
                      style: TextStyleConfig.normalGrayStyle,
                    ),
                    const Text(' • ', style: TextStyleConfig.normalGrayStyle),
                    Text(
                      minute.toStringAsFixed(2).replaceAll('.', ':'),
                      style: TextStyleConfig.normalGrayStyle,
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
        ],
      ),
    );
  }
}
