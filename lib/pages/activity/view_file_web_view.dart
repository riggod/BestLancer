import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewFileWebView extends StatefulWidget {
  const ViewFileWebView({Key? key, required this.url}) : super(key: key);
  final String url;

  @override
  State<ViewFileWebView> createState() => _ViewFileWebViewState();
}

class _ViewFileWebViewState extends State<ViewFileWebView> {
  late WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(
          'https://firebasestorage.googleapis.com/v0/b/bestlancer-8a7fe.appspot.com/o/posts%2FFC6SXcRlEXfViSK2OYg9jk1cvDM2%2Fimage_picker8884211607712371806.jpg?alt=media&token=2614cad7-8786-4be1-950c-aa840a236043'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Text('File view'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(widget.url),
            WebViewWidget(
                controller: controller,
              ),
          ],
        ),
      ),
    );
  }
}
