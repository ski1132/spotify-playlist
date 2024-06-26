import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/controllers/main_navigator_controller.dart';
import 'package:spotify_playlist/controllers/track_search_controller.dart';
import 'package:spotify_playlist/models/playlist_user_model.dart';
import 'package:spotify_playlist/models/track_search_model.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/page_name_enum.dart';
import 'package:spotify_playlist/utils/size_config.dart';
import 'package:spotify_playlist/utils/text_style_config.dart';
import 'package:spotify_playlist/widgets/custom_dialog.dart';
import 'package:spotify_playlist/widgets/text_form_field_app.dart';

class TrackSearchPage extends StatelessWidget {
  final PlaylistUserModel playlistUserModel;
  final PageName previousePage;
  const TrackSearchPage(
      {super.key,
      required this.playlistUserModel,
      required this.previousePage});

  @override
  Widget build(BuildContext context) {
    final TrackSearchController trackSearchController =
        Get.put(TrackSearchController());
    return Column(
      children: [
        appBar(trackSearchController),
        Expanded(
            child: Obx(() => ListView.builder(
                itemCount: trackSearchController.trackSearchList.length + 1,
                itemBuilder: (context, index) =>
                    trackSearchController.trackSearchList.length == index
                        ? loadMore(trackSearchController)
                        : itemTrack(
                            trackSearchController.trackSearchList[index],
                            trackSearchController))))
      ],
    );
  }

  Widget appBar(TrackSearchController trackSearchController) {
    return Padding(
      padding: const EdgeInsets.all(SizeConfig.fontNormalSize),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              final MainNavigatorController mainNavigatorController =
                  Get.find();
              mainNavigatorController.changePage(
                  previousePage, PageName.userPlaylist,
                  valueToOtherPage: [playlistUserModel]);
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
          Expanded(
            child: SizedBox(
              height: 32,
              child: TextFormFieldApp(
                controller: trackSearchController.searchFieldController,
                suffixIcon: Obx(
                  () => trackSearchController.enableClearSearch.value
                      ? IconButton(
                          onPressed: () {
                            trackSearchController.resetValue();
                          },
                          icon: const Icon(
                            Icons.close,
                            size: SizeConfig.fontNormalSize,
                            color: ColorConfig.white,
                          ))
                      : const SizedBox(),
                ),
                onChange: (text) => trackSearchController.enableClearSearch(
                    trackSearchController
                        .searchFieldController.text.isNotEmpty),
                onSubmit: (search) {
                  if (trackSearchController
                      .searchFieldController.text.isNotEmpty) {
                    trackSearchController.fetchSearchTrack();
                  }
                },
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Icon(
            Icons.mic,
            color: Colors.white,
            size: SizeConfig.fontLargeSize,
          ),
        ],
      ),
    );
  }

  Widget itemTrack(TrackSearchModel trackSearchModel,
      TrackSearchController trackSearchController) {
    return Container(
      padding: const EdgeInsets.all(SizeConfig.fontNormalSize),
      child: Row(children: [
        Image.network(
          trackSearchModel.album.imagesList.first.url,
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
                      trackSearchModel.name,
                      style: TextStyleConfig.normalWhiteStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    trackSearchModel.type.capitalizeFirst ??
                        trackSearchModel.type,
                    style: TextStyleConfig.normalGrayStyle,
                  ),
                  const Text(' • ', style: TextStyleConfig.normalGrayStyle),
                  Expanded(
                    child: Text(
                      trackSearchModel.artists.first.name,
                      style: TextStyleConfig.normalGrayStyle,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.dialog(CustomDialog(
              title: trackSearchModel.name,
              content:
                  'Confirm add ${trackSearchModel.name} to playlist ${playlistUserModel.name}',
              showCancelButton: true,
              onConfirm: () async {
                await trackSearchController.addTrackToPlaylist(
                    playlistUserModel.id, trackSearchModel.uri);
                Get.back();
              },
            ));
          },
          child: const Icon(
            Icons.add_circle_outline,
            color: ColorConfig.white,
            size: SizeConfig.fontJumboSize,
          ),
        )
      ]),
    );
  }

  Widget loadMore(TrackSearchController trackSearchController) {
    return trackSearchController.enableLoadMoreButton.value &&
            trackSearchController.trackSearchList.isNotEmpty
        ? GestureDetector(
            onTap: () => trackSearchController.fetchSearchTrack(),
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
