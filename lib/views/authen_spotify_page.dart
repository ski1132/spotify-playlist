import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:spotify_playlist/utils/key_config.dart';
import 'package:spotify_playlist/utils/url_config.dart';
import 'package:spotify_playlist/views/main_navigator_page.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AuthenSpotifyPage extends StatelessWidget {
  const AuthenSpotifyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..setBackgroundColor(const Color(0x00000000))
            ..setNavigationDelegate(
              NavigationDelegate(
                onNavigationRequest: (NavigationRequest request) async {
                  if (request.url.contains('${UrlConfig.redirectUrl}/?code=')) {
                    final code = request.url.split('?code=').last;
                    const FlutterSecureStorage()
                        .write(
                            key: KeyConfig.codeAuthen,
                            value: code) //code เหมือน token ต้องเรียกใหม่เสมอ
                        .then((value) => Get.offAll(const MainNavigatorPage()));
                    return NavigationDecision.prevent;
                  }
                  return NavigationDecision.navigate;
                },
              ),
            )
            ..loadRequest(Uri.parse(
                'https://accounts.spotify.com/authorize?response_type=code&client_id=95758c9caee44f1aa5e5dd5ec6b86f54&redirect_uri=spotify-playlist-login://callback'))),
    );
  }
}
