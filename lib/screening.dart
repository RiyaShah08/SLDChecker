import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:sldchecker/model/flaskapi.dart';

class ScreenTest extends StatefulWidget {
  const ScreenTest({Key? key}) : super(key: key);

  @override
  State<ScreenTest> createState() => _ScreenTestState();
}

class _ScreenTestState extends State<ScreenTest> {

  String url = '';
  var data;
  String output = 'Output';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                url = 'http://86ff-35-243-172-89.ngrok.io/' + value.toString();
              },
            ),
            TextButton(onPressed: ()async{
              data = await fetchdata(url);
              var decoded = jsonDecode(data);
               setState(() {
                 output = decoded['Prediction'];
               });
            }, child: Text("Predict")),
            Text(output),
          ],
        ),
      ),
    );
  }
}
