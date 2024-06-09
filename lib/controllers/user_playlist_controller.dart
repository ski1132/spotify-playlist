import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/api/get_api.dart';
import 'package:spotify_playlist/api/post_api.dart';
import 'package:spotify_playlist/models/playlist_user_model.dart';
import 'package:spotify_playlist/utils/key_config.dart';
import 'package:spotify_playlist/api/url_config.dart';

class UserPlaylistController extends GetxController {
  final storage = const FlutterSecureStorage();
  RxList<PlaylistUserModel> playList = <PlaylistUserModel>[].obs;

  Future fetchUserPlaylist() async {
    playList.clear();
    final token = await storage.read(key: KeyConfig.token);
    final data = {
      'limit': 20,
      'offset': 0,
    };
    final response = await GetApi.call(UrlConfig.userPlaylistUrl,
        headers: {'Authorization': token}, param: data);
    if (response.statusCode != null && response.statusCode == 200) {
      final List responseList = response.data['items'];
      playList.addAll(
          responseList.map((e) => PlaylistUserModel.fromJson(e)).toList());
      playList.refresh();
    }
  }

  Future createUserPlaylist(String name, String description) async {
    EasyLoading.show();
    final token = await storage.read(key: KeyConfig.token);
    final data = {
      'name': name,
      'description': description,
      'public': false,
    };
    final response = await PostApi.call(
      UrlConfig.createPlaylistUrl,
      data: data,
      headers: {'Authorization': token, 'Content-Type': 'application/json'},
    );
    if (response.statusCode != null &&
        (response.statusCode == 200 || response.statusCode == 201)) {
      await fetchUserPlaylist();
    }
    EasyLoading.dismiss();
  }
}
