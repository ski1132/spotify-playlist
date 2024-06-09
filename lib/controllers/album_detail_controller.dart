import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/api/get_api.dart';
import 'package:spotify_playlist/models/album_search_model.dart';
import 'package:spotify_playlist/utils/key_config.dart';
import 'package:spotify_playlist/api/url_config.dart';

class AlbumDetailController extends GetxController {
  final storage = const FlutterSecureStorage();
  RxBool isLoading = false.obs;
  Rx<AlbumSearchModel?> albumList = null.obs;

  Future fetchAlbumDetail(AlbumSearchModel albumSearchModel) async {
    isLoading(true);
    final token = await storage.read(key: KeyConfig.token);
    final data = {
      'ids': albumSearchModel.id,
      'market': 'TH',
    };
    final response = await GetApi.call(UrlConfig.albumDetailUrl,
        headers: {'Authorization': token}, param: data);
    isLoading(false);
    if (response.statusCode != null && response.statusCode == 200) {
      final List responseList = response.data['albums'];

      albumList = AlbumSearchModel.fromJson(responseList.first).obs;
      return albumList;
    } else {
      return [];
    }
  }
}
