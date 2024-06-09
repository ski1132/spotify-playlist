import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:spotify_playlist/api/get_api.dart';
import 'package:spotify_playlist/api/url_config.dart';
import 'package:spotify_playlist/models/track_search_model.dart';
import 'package:spotify_playlist/utils/key_config.dart';

class UserPlaylistDetailController extends GetxController {
  final storage = const FlutterSecureStorage();
  RxBool isLoading = false.obs;
  RxList<TrackSearchModel> trackList = <TrackSearchModel>[].obs;

  Future fetchTrackList(
    String playlistId,
  ) async {
    EasyLoading.show();
    trackList.clear();
    final token = await storage.read(key: KeyConfig.token);
    final data = {
      'market': 'TH',
    };
    final response = await GetApi.call(
      "${UrlConfig.addTrackToPlaylistUrl}$playlistId/tracks",
      headers: {
        'Authorization': token,
      },
      param: data,
    );
    if (response.statusCode != null &&
        (response.statusCode == 200 || response.statusCode == 201)) {
      final List responseList = response.data['items'];
      if (responseList.isNotEmpty && responseList.first != null) {
        trackList.addAll(responseList
            .map((e) => TrackSearchModel.fromJson(e['track']))
            .toList());
      }
      trackList.refresh();
    }
    EasyLoading.dismiss();
  }
}
