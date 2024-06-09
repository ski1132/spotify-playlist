import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:spotify_playlist/controllers/featured_playlist_controller.dart';
import 'package:spotify_playlist/controllers/main_navigator_controller.dart';
import 'package:spotify_playlist/models/album_search_model.dart';
import 'package:spotify_playlist/models/featured_playlist_model.dart';
import 'package:spotify_playlist/utils/color_config.dart';
import 'package:spotify_playlist/utils/page_name_enum.dart';
import 'package:spotify_playlist/utils/size_config.dart';
import 'package:spotify_playlist/utils/text_style_config.dart';

class FeaturedPlaylistPage extends StatelessWidget {
  const FeaturedPlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    FeaturedPlaylistController featuredPlaylistController =
        Get.put(FeaturedPlaylistController());
    return Column(
      children: [
        appBar(),
        Expanded(
          child: Obx(
            () => GridView.builder(
                primary: true,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // แสดง 2 คอลัมน์
                    childAspectRatio: 0.7,
                    mainAxisSpacing: SizeConfig.fontNormalSize,
                    crossAxisSpacing: SizeConfig.fontNormalSize),
                itemCount: featuredPlaylistController.featuredPlaylist.length,
                itemBuilder: (BuildContext context, int index) =>
                    itemFeaturedPlaylistController(
                        featuredPlaylistController.featuredPlaylist[index])),
          ),
        ),
      ],
    );
  }

  Widget appBar() {
    return Padding(
      padding: const EdgeInsets.all(SizeConfig.fontNormalSize),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
              size: SizeConfig.fontLargeSize,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Expanded(
            child: Text(
              'Mixed for you',
              style: TextStyleConfig.largeWhiteStyle,
            ),
          ),
          GestureDetector(
            onTap: () {
              final MainNavigatorController mainNavigatorController =
                  Get.find();
              mainNavigatorController.changePage(
                  PageName.albumSearch, PageName.featured);
            },
            child: const Icon(
              Icons.search,
              color: Colors.white,
              size: SizeConfig.fontLargeSize,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: () {
              final MainNavigatorController mainNavigatorController =
                  Get.find();
              mainNavigatorController.changePage(
                  PageName.userPlaylist, PageName.featured);
            },
            child: CircleAvatar(
              backgroundColor: ColorConfig.orange,
              radius: SizeConfig.fontNormalSize,
              child: const Text(
                'S',
                style: TextStyleConfig.smallWhiteStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget itemFeaturedPlaylistController(
      FeaturedPlaylistModel featuredPlaylistModel) {
    return GestureDetector(
      onTap: () {
        final MainNavigatorController mainNavigatorController = Get.find();
        final AlbumSearchModel albumDetailModel = AlbumSearchModel(
          artists: [],
          id: featuredPlaylistModel.id,
          name: featuredPlaylistModel.name,
          albumType: featuredPlaylistModel.type,
          imagesList: featuredPlaylistModel.imagesList,
          releaseDate: '',
          tracks: null,
        ); // แปลงค่าเป็น model ของหน้า Album Detail
        mainNavigatorController.changePage(
            PageName.albumDetail, PageName.featured,
            valueToOtherPage: [albumDetailModel]);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            featuredPlaylistModel.imagesList.first.url,
            fit: BoxFit.fill,
            scale: 1,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            featuredPlaylistModel.name,
            style: TextStyleConfig.normalWhiteStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            featuredPlaylistModel.description,
            style: TextStyleConfig.smallGrayStyle,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
