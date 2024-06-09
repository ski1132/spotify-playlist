import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/models/playlist_user_model.dart';
import 'package:spotify_playlist/utils/key_config.dart';
import 'package:spotify_playlist/utils/url_config.dart';
import 'package:spotify_playlist/widgets/custom_dialog.dart';

class UserPlaylistController extends GetxController {
  final storage = const FlutterSecureStorage();
  RxBool isLoading = false.obs;
  RxList<PlaylistUserModel> playList = <PlaylistUserModel>[].obs;

  Future fetchUserPlaylist() async {
    isLoading(true);
    playList.clear();
    final token = await storage.read(key: KeyConfig.token);
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30), // 60 sec
        headers: {'Authorization': token},
      ),
    );
    final data = {
      'limit': 20,
      'offset': 0,
    };
    final response =
        await dio.get(UrlConfig.userPlaylistUrl, queryParameters: data);
    isLoading(false);
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
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30), // 60 sec
        headers: {
          'Authorization': token,
        },
      ),
    );
    final data = {
      'name': name,
      'description': description,
      'public': false,
    };
    try {
      final response = await dio.post(
        UrlConfig.createPlaylistUrl,
        data: data,
        options: Options(contentType: Headers.jsonContentType),
      );
      if (response.statusCode != null &&
          (response.statusCode == 200 || response.statusCode == 201)) {
        await fetchUserPlaylist();
      }
      EasyLoading.dismiss();
    } catch (e) {
      Get.dialog(CustomDialog(title: e.toString()));
      EasyLoading.dismiss();
    }
  }
}
