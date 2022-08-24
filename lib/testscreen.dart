import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sldchecker/contenttest.dart';
import 'package:sldchecker/homescreen.dart';
import 'package:sldchecker/therapy.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 30.0, top: 30, left: 20),
                child: Row(
                  children: [
                    IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: () {
                      Navigator.pop(context);
                    },),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 200.0),
                      child: Image.asset('asset/profile.png', height: 45, width: 45,),
                    )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, top: 25),
                child: Column(
                  children: [
                    Text("Free SLD Test for Children", style: TextStyle(fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Align(alignment: Alignment.center, child: Image.asset('asset/testmain.png', height: 250, width: 250,)),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 25.0, right: 25, left: 25),
                child: RichText(
                  textAlign: TextAlign.justify,
                  text: TextSpan(
                    text: 'Learn your child’s risk of SLD in',
                    style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w200,), /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: '\n5 to 10 minutes!', style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: '\nOver 200,000 parents have tested their children with SLD Checker’s screener.',
                          style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200)),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 21,),
              Align(alignment: Alignment.center, child: Text('We guarantee results!', style: TextStyle(fontSize: 16, color: Color(0xFFABA7A7), fontFamily: "Poppins", fontWeight: FontWeight.w200, ),)),
              Align(
                alignment: Alignment.center,
                child: MaterialButton(
                  color: Color(0xFFECB819),
                  height: 40,
                  minWidth: 125,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text("Take Test", style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600),),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ContentPage(), ), );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
