import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebviewView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final url = Get.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Webview'),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
