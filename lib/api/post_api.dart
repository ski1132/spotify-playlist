import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/route_manager.dart';
import 'package:spotify_playlist/widgets/custom_dialog.dart';

class PostApi {
  //Call raw
  static Future<Response> call(
    String url, {
    required Map<String, dynamic> headers,
    required Map<String, dynamic> data,
  }) async {
    try {
      final dio = Dio(
        BaseOptions(
            connectTimeout: const Duration(seconds: 30), // 60 sec
            headers: headers),
      );
      final response = await dio.post(
        url,
        data: data,
      );
      return response;
    } catch (e) {
      if (EasyLoading.isShow) EasyLoading.dismiss();
      Get.dialog(CustomDialog(title: e.toString()));
      return Response(requestOptions: RequestOptions());
    }
  }
}
