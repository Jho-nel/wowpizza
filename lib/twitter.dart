import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:wowpizza/menu_bar.dart';

class Twitter extends StatelessWidget {
  const Twitter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WebViewExample();
  }
}

class WebViewExample extends StatefulWidget {
  const WebViewExample({Key? key}) : super(key: key);

  @override
  WebViewExampleState createState() => WebViewExampleState();
}

class WebViewExampleState extends State<WebViewExample> {
  @override
  void initState() {
    super.initState();
// Enable hybrid composition.

    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: PreferredSize(
          child: MenuBar(),
          preferredSize: Size(double.infinity, kToolbarHeight),
        ),
        body: SafeArea(
            child: WebView(
          initialUrl: 'https://www.twitter.com',
        )));
  }
}
