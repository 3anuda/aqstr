import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MaterialApp(home: AqmolaWebView()));
}

class AqmolaWebView extends StatefulWidget {
  const AqmolaWebView({super.key});

  @override
  State<AqmolaWebView> createState() => _AqmolaWebViewState();
}

class _AqmolaWebViewState extends State<AqmolaWebView> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('http://Ваш ip/aqmolastart/app/index.html')); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(controller: controller),
      ),
    );
  }
}