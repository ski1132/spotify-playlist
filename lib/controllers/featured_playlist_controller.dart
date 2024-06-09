import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:spotify_playlist/models/account_token_model.dart';
import 'package:spotify_playlist/models/featured_playlist_model.dart';
import 'package:spotify_playlist/utils/key_config.dart';
import 'package:spotify_playlist/utils/url_config.dart';

class FeaturedPlaylistController extends GetxController {
  final storage = const FlutterSecureStorage();
  RxBool isLoading = true.obs;
  RxList<FeaturedPlaylistModel> featuredPlaylist =
      <FeaturedPlaylistModel>[].obs;

  @override
  void onInit() {
    super.onInit();

    fetchTokenAndPlaylist();
  }

  Future fetchTokenAndPlaylist() async {
    EasyLoading.show();
    await fetchAccountToken();
    await fetchFeaturedPlaylists();
    EasyLoading.dismiss();
  }

  Future fetchAccountToken() async {
    String encodedClient = utf8
        .fuse(base64)
        .encode('${UrlConfig.clientId}:${UrlConfig.clientSecret}');
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30), // 30 sec
        headers: {'Authorization': 'Basic $encodedClient'},
      ),
    );
    final codeAuthen = await storage.read(key: KeyConfig.codeAuthen);
    final response = await dio.post(
      UrlConfig.acountTokenUrl,
      data: {
        'grant_type': 'authorization_code',
        'code': codeAuthen,
        'redirect_uri': UrlConfig.redirectUrl,
        'scope': 'playlist-read-private playlist-modify-private'
      },
      options: Options(contentType: Headers.formUrlEncodedContentType),
    );
    if (response.statusCode != null && response.statusCode == 200) {
      final tokenModel = AccountTokenModel.fromJson(response.data);
      await storage.write(
          key: KeyConfig.token,
          value: '${tokenModel.tokenType} ${tokenModel.accessToken}');
    }
  }

  Future fetchFeaturedPlaylists() async {
    featuredPlaylist.clear();
    final token = await storage.read(key: KeyConfig.token);
    final dio = Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30), // 30 sec
        headers: {'Authorization': token},
      ),
    );
    final response = await dio.get(UrlConfig.featuredPlaylistsUrl);
    if (response.statusCode != null && response.statusCode == 200) {
      final responseList = response.data['playlists']['items'] as List;
      featuredPlaylist.addAll(
          responseList.map((e) => FeaturedPlaylistModel.fromJson(e)).toList());
    }
  }
}
