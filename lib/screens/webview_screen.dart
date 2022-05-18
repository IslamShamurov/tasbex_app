import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewOnline extends StatefulWidget {
  static const String id = 'web_view_online_screen';

  const WebViewOnline({Key? key}) : super(key: key);

  @override
  State<WebViewOnline> createState() => _WebViewOnlineState();
}

class _WebViewOnlineState extends State<WebViewOnline> {
  final Completer<WebViewController> _controller = Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: WebView(
        initialUrl: 'https://www.youtube.com/watch?v=AI_C-gndPZs',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller){
          _controller.complete(controller);
        },
      ),
    );
  }
}
