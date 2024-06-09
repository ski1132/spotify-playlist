import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/api/get_api.dart';
import 'package:spotify_playlist/models/album_search_model.dart';
import 'package:spotify_playlist/utils/key_config.dart';
import 'package:spotify_playlist/api/url_config.dart';

class AlbumSearchController extends GetxController {
  final storage = const FlutterSecureStorage();
  TextEditingController searchFieldController = TextEditingController();
  RxList<AlbumSearchModel> albumSearchList = <AlbumSearchModel>[].obs;
  RxBool enableClearSearch = false.obs;
  int offset = 0;
  RxBool enableLoadMoreButton = true.obs;

  resetValue() {
    albumSearchList.clear();
    offset = 0;
    enableLoadMoreButton(true);
    searchFieldController.clear();
    enableClearSearch(false);
  }

  Future fetchSearchAlbum() async {
    EasyLoading.show();
    final token = await storage.read(key: KeyConfig.token);
    final data = {
      'q': searchFieldController.text,
      'type': 'album',
      'market': 'TH',
      'limit': 20,
      'offset': offset
    };
    final response = await GetApi.call(UrlConfig.searchAlbumUrl,
        headers: {'Authorization': token}, param: data);
    EasyLoading.dismiss();
    if (response.statusCode != null && response.statusCode == 200) {
      final responseList = response.data['albums']['items'] as List;
      albumSearchList.addAll(
          responseList.map((e) => AlbumSearchModel.fromJson(e)).toList());
      final total = response.data['albums']['total'] as int;
      if (total > offset) {
        offset += 20;
        if (total < offset) {
          enableLoadMoreButton(
              false); //เช็ค offset กับจำนวนทั้งหมดว่าต้องโหลดเพิ่มไหม
        }
      } else {
        enableLoadMoreButton(false);
      }
    }
  }
}
