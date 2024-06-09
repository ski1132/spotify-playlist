import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/api/get_api.dart';
import 'package:spotify_playlist/api/post_api.dart';
import 'package:spotify_playlist/api/url_config.dart';
import 'package:spotify_playlist/models/track_search_model.dart';
import 'package:spotify_playlist/utils/key_config.dart';

class TrackSearchController extends GetxController {
  final storage = const FlutterSecureStorage();
  TextEditingController searchFieldController = TextEditingController();
  RxList<TrackSearchModel> trackSearchList = <TrackSearchModel>[].obs;
  RxBool enableClearSearch = false.obs;

  Future fetchSearchAlbum() async {
    EasyLoading.show();
    trackSearchList.clear();
    final token = await storage.read(key: KeyConfig.token);
    final data = {
      'q': searchFieldController.text,
      'type': 'track',
      'market': 'TH',
      // 'limit':10,
      // 'offset':''
    };
    final response = await GetApi.call(UrlConfig.searchAlbumUrl,
        headers: {'Authorization': token}, param: data);
    EasyLoading.dismiss();
    if (response.statusCode != null && response.statusCode == 200) {
      final responseList = response.data['tracks']['items'] as List;
      trackSearchList.addAll(
          responseList.map((e) => TrackSearchModel.fromJson(e)).toList());
      trackSearchList.refresh();
    }
  }

  Future addTrackToPlaylist(String playlistId, String trackUri) async {
    EasyLoading.show();
    final token = await storage.read(key: KeyConfig.token);
    final data = {
      'uris': [trackUri],
      'position': 0,
    };
    final response = await PostApi.call(
      "${UrlConfig.addTrackToPlaylistUrl}$playlistId/tracks",
      data: data,
      headers: {'Authorization': token, 'Content-Type': 'application/json'},
    );
    if (response.statusCode != null &&
        (response.statusCode == 200 || response.statusCode == 201)) {}
    EasyLoading.dismiss();
  }
}
