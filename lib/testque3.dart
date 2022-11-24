import 'package:flutter/material.dart';
import 'package:sldchecker/testque1.dart';

class Testques2 extends StatelessWidget {
  const Testques2({Key? key}) : super(key: key);

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
                          padding: const EdgeInsets.only(left: 220.0),
                          child: Image.asset('asset/profile.png', height: 45, width: 45,),
                        ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0, left: 25, top: 15),
                  child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                          text: "Not sure if testing is needed?",
                          style: TextStyle(color: Color(0XFFECB819), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\nDont have your child with you?',
                              style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                            ),
                            TextSpan(
                              text: '\n\nSelect any statements that describe',
                              style: TextStyle(color: Colors.black54, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                            ),
                            TextSpan(
                              text: '\nyour child.',
                              style: TextStyle(color: Colors.black54, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                            ),
                          ]
                      )),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Image.asset('asset/yn.png', height: 250, width: 250),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(right: 25.0, left: 25, top: 15),
                  child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                          text: "Mispronounces certain words",
                          style: TextStyle(color: Colors.black, fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.w300),
                          children: <TextSpan>[
                            TextSpan(
                              text: '\nwith more than one syllable.',
                              style: TextStyle(color: Colors.black, fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.w300),
                            ),
                          ]
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25, top: 25),
                  child: MaterialButton(
                    height: 40,
                    elevation: 20,
                    color: Color(0xFF0085A3),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Testques1(), ), );
                    },
                    child: Text(
                      "Yes",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins",
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 25, left: 25, top: 10),
                  child: MaterialButton(
                    height: 40,
                    elevation: 20,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5), side: BorderSide(color: Color(0xFF0085A3), width: 2)),
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Testques1(), ), );
                    },
                    child: Text("No", textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Poppins",
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
