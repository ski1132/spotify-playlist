import 'dart:async';
import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/route_manager.dart';
import 'package:spotify_playlist/widgets/custom_dialog.dart';

class GetApi {
  static Future<Response> call(
    String url, {
    Map<String, dynamic> headers = const {},
    Map<String, dynamic> param = const {},
  }) async {
    try {
      final dio = Dio(
        BaseOptions(
          connectTimeout: const Duration(seconds: 30), // 60 sec
          headers: headers,
        ),
      );
      final response = await dio.get(url, queryParameters: param);
      return response;
    } catch (e) {
      if (EasyLoading.isShow) EasyLoading.dismiss();
      Get.dialog(CustomDialog(title: e.toString()));
      return Response(requestOptions: RequestOptions());
    }
  }
}
