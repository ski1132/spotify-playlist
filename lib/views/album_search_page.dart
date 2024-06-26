import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_utils/src/extensions/export.dart';
import 'package:get/instance_manager.dart';
import 'package:spotify_playlist/controllers/album_search_controller.dart';
import 'package:spotify_playlist/controllers/main_navigator_controller.dart';
import 'package:spotify_playlist/models/album_search_model.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/page_name_enum.dart';
import 'package:spotify_playlist/utils/size_config.dart';
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
        appBar(albumSearchController),
        Expanded(
            child: Obx(() => ListView.builder(
                itemCount: albumSearchController.albumSearchList.length + 1,
                itemBuilder: (context, index) => albumSearchController
                            .albumSearchList.length ==
                        index
                    ? loadMore(albumSearchController)
                    : itemAlbum(albumSearchController.albumSearchList[index]))))
      ],
    );
  }

  Widget appBar(AlbumSearchController albumSearchController) {
    return Padding(
      padding: const EdgeInsets.all(SizeConfig.fontNormalSize),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              final MainNavigatorController mainNavigatorController =
                  Get.find();
              mainNavigatorController.changePage(
                PageName.featured,
                PageName.albumSearch,
              );
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
                controller: albumSearchController.searchFieldController,
                suffixIcon: Obx(
                  () => albumSearchController.enableClearSearch.value
                      ? IconButton(
                          onPressed: () {
                            albumSearchController.resetValue();
                          },
                          icon: const Icon(
                            Icons.close,
                            size: SizeConfig.fontNormalSize,
                            color: ColorConfig.white,
                          ))
                      : const SizedBox(),
                ),
                onChange: (text) => albumSearchController.enableClearSearch(
                    albumSearchController
                        .searchFieldController.text.isNotEmpty),
                onSubmit: (search) {
                  if (albumSearchController
                      .searchFieldController.text.isNotEmpty) {
                    albumSearchController.fetchSearchAlbum();
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

  Widget itemAlbum(AlbumSearchModel albumSearchModel) {
    return GestureDetector(
      onTap: () {
        final MainNavigatorController mainNavigatorController = Get.find();
        mainNavigatorController.changePage(
            PageName.albumDetail, PageName.albumSearch,
            valueToOtherPage: [albumSearchModel]);
      },
      child: Container(
        padding: const EdgeInsets.all(SizeConfig.fontNormalSize),
        child: Row(children: [
          Image.network(
            albumSearchModel.imagesList.first.url,
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
                        albumSearchModel.name,
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
                      albumSearchModel.albumType.capitalizeFirst ??
                          albumSearchModel.albumType,
                      style: TextStyleConfig.normalGrayStyle,
                    ),
                    const Text(' • ', style: TextStyleConfig.normalGrayStyle),
                    Expanded(
                      child: Text(
                        albumSearchModel.artists.first.name,
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

  Widget loadMore(AlbumSearchController albumSearchController) {
    return albumSearchController.enableLoadMoreButton.value &&
            albumSearchController.albumSearchList.isNotEmpty
        ? GestureDetector(
            onTap: () => albumSearchController.fetchSearchAlbum(),
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
