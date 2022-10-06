import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Justtest extends StatelessWidget {
  const Justtest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Container(


        // child: ElevatedButton(
        //   child: Text('open url'),
        //   onPressed: () async {
        //     final url = 'http://0d29-34-136-169-113.ngrok.io/';
        //
        //     if(await canLaunchUrl(url)){
        //       await launch(url, forceSafariVC: true,
        //       forceWebView: true,
        //       enableJavaScript: true);
        //     }
        //   },
        // ),
      ),
    ));
  }
}
