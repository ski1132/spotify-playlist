import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:spotify_playlist/controllers/featured_playlist_controller.dart';
import 'package:spotify_playlist/models/featured_playlist_model.dart';
import 'package:spotify_playlist/utils/text_style_config.dart';

class FeaturedPlaylistPage extends StatelessWidget {
  const FeaturedPlaylistPage({super.key});

  @override
  Widget build(BuildContext context) {
    FeaturedPlaylistController featuredPlaylistController =
        Get.put(FeaturedPlaylistController());
    return Obx(
      () => GridView.builder(
          primary: true,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // แสดง 2 คอลัมน์
              childAspectRatio: 0.7,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16),
          itemCount: featuredPlaylistController.featuredPlaylist.length,
          itemBuilder: (BuildContext context, int index) =>
              itemFeaturedPlaylistController(
                  featuredPlaylistController.featuredPlaylist[index])),
    );
  }

  Widget itemFeaturedPlaylistController(
      FeaturedPlaylistModel featuredPlaylistModel) {
    return GestureDetector(
      onTap: () {},
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
          Text(featuredPlaylistModel.name,
              style: TextStyleConfig.boldWhiteStyle),
          Text(
            featuredPlaylistModel.description,
            style: TextStyleConfig.smallGrayStyle,
            maxLines: 2,
            overflow: TextOverflow.clip,
          )
        ],
      ),
    );
  }
}
