import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/models/album_search_model.dart';
import 'package:spotify_playlist/utils/key_config.dart';
import 'package:spotify_playlist/utils/url_config.dart';

class AlbumSearchController extends GetxController {
  final storage = const FlutterSecureStorage();
  TextEditingController searchFieldController = TextEditingController();
  RxList<AlbumSearchModel> albumSearchList = <AlbumSearchModel>[].obs;
  RxBool enableClearSearch = false.obs;

  Future<List<AlbumSearchModel>> fetchSearchAlbum() async {
    EasyLoading.show();
    albumSearchList.clear();
    final token = await storage.read(key: KeyConfig.token);
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30), // 60 sec
        headers: {'Authorization': token},
      ),
    );
    final data = {
      'q': searchFieldController.text,
      'type': 'album',
      'market': 'TH',
      // 'limit':10,
      // 'offset':''
    };
    final response =
        await dio.get(UrlConfig.searchAlbumUrl, queryParameters: data);
    EasyLoading.dismiss();
    if (response.statusCode != null && response.statusCode == 200) {
      final responseList = response.data['albums']['items'] as List;
      albumSearchList.addAll(
          responseList.map((e) => AlbumSearchModel.fromJson(e)).toList());
      return albumSearchList;
    } else {
      return [];
    }
  }
}
