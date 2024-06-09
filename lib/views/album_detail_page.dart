import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:get/instance_manager.dart';
import 'package:spotify_playlist/controllers/album_detail_controller.dart';
import 'package:spotify_playlist/controllers/main_navigator_controller.dart';
import 'package:spotify_playlist/models/album_detail_model.dart';
import 'package:spotify_playlist/models/album_search_model.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/page_name_enum.dart';
import 'package:spotify_playlist/utils/size_config.dart';
import 'package:spotify_playlist/utils/text_style_config.dart';

class AlbumDetailPage extends StatelessWidget {
  final AlbumSearchModel albumSearchModel;
  final PageName previousePage;
  const AlbumDetailPage({
    super.key,
    required this.albumSearchModel,
    required this.previousePage,
  });

  @override
  Widget build(BuildContext context) {
    AlbumDetailController albumDetailController =
        Get.put(AlbumDetailController());
    albumDetailController.fetchAlbumDetail(albumSearchModel);
    return Column(
      children: [
        appBar(albumDetailController),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                imageAndButton(),
                Obx(() => albumDetailController.isLoading.value
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
                        itemCount: albumDetailController
                                .albumList.value?.tracks?.items.length ??
                            0,
                        itemBuilder: (context, index) => itemSong(
                            index,
                            albumDetailController
                                .albumList.value!.tracks!.items[index]),
                      )),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget appBar(AlbumDetailController albumDetailController) {
    return Padding(
      padding: const EdgeInsets.all(SizeConfig.fontNormalSize),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              final MainNavigatorController mainNavigatorController =
                  Get.find();
              mainNavigatorController.changePage(previousePage);
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
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: Column(
            children: [
              albumSearchModel.artists.isEmpty
                  ? const SizedBox()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          albumSearchModel.imagesList.first.url,
                          width: SizeConfig.imageTinySize,
                          height: SizeConfig.imageTinySize,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          albumSearchModel.artists.first.name,
                          style: TextStyleConfig.smallGrayStyle,
                        )
                      ],
                    ),
              albumSearchModel.releaseDate.length < 5
                  ? const SizedBox()
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          albumSearchModel.albumType.capitalizeFirst ??
                              albumSearchModel.albumType,
                          style: TextStyleConfig.smallGrayStyle,
                        ),
                        const Text(' • ',
                            style: TextStyleConfig.normalGrayStyle),
                        Text(
                          albumSearchModel.releaseDate.substring(0, 4),
                          style: TextStyleConfig.smallGrayStyle,
                        )
                      ],
                    ),
            ],
          )),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: () {
              final MainNavigatorController mainNavigatorController =
                  Get.find();
              mainNavigatorController.changePage(PageName.search);
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
          Image.network(
            albumSearchModel.imagesList.first.url,
            width: SizeConfig.halfWidthScreenSize,
            height: SizeConfig.halfWidthScreenSize,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            albumSearchModel.name,
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

  Widget itemSong(int index, AlbumDetailModel albumDetailModel) {
    final minute = albumDetailModel.durationMs / 1000 / 60;
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
                  albumDetailModel.name,
                  style: TextStyleConfig.normalWhiteStyle,
                ),
                Row(
                  children: [
                    Text(
                      albumDetailModel.artists.first.name,
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
