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
  int offset = 0;
  RxBool enableLoadMoreButton = true.obs;

  resetValue() {
    playList.clear();
    offset = 0;
    enableLoadMoreButton(true);
  }

  Future fetchUserPlaylist() async {
    final token = await storage.read(key: KeyConfig.token);
    final data = {
      'limit': 20,
      'offset': offset,
    };
    final response = await GetApi.call(UrlConfig.userPlaylistUrl,
        headers: {'Authorization': token}, param: data);
    if (response.statusCode != null && response.statusCode == 200) {
      final total = response.data['total'] as int;
      if (total > offset) {
        offset += 20;
        if (total < offset) {
          enableLoadMoreButton(
              false); //เช็ค offset กับจำนวนทั้งหมดว่าต้องโหลดเพิ่มไหม
        }
      } else {
        enableLoadMoreButton(false);
      }
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
