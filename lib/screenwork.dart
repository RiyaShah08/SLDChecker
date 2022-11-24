import 'package:flutter/material.dart';

class Screen_work extends StatelessWidget {
  const Screen_work({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 50.0, right: 50, top: 200),
          child: Image.asset('asset/working.png', height: 250, width: 250,),
        ),
      ),
    ));
  }
}
