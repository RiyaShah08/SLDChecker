import 'package:flutter/material.dart';
import 'package:sldchecker/testscreen.dart';
import 'package:sldchecker/therapytwo.dart';

class TherapyDetail extends StatelessWidget {
  const TherapyDetail({Key? key}) : super(key: key);

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
                        IconButton(icon: Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.pop(context);
                          },),

                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 220.0),
                      child: Image.asset('asset/profile.png', height: 45, width: 45,),
                  ),),
                ]),),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, right: 30, left: 30),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                        text: 'Online Therapy',
                        style: TextStyle(color: Color(0xFF0085A3), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600,), /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                              text: ' from Leading', style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600)),
                         ],
                       ),
                     ),
                  ),
                  SizedBox(height: 5),
                  Align(alignment: Alignment.center, child: Text("We Guarantee", style: TextStyle(fontSize: 22, color: Color(0xFFECB819), fontFamily: "Inter", fontWeight: FontWeight.w600))),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
                    child: Row(
                        children: [
                          Text('Professional Therapy', textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF0085A3), fontSize: 20, fontFamily: "Inter", fontWeight: FontWeight.w600)),
                          IconButton(icon: Icon(Icons.fast_forward), color: Color(0xFF0085A3), onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TherapyTwo(), ), );
                          },)]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0, left: 30, top: 10),
                    child: Text("SLD Checkers guarantees that your child's reading comprehension will improve by one  level  after using SLD Checkers Teletherapy for 8 weeks. If your child does not improve with each grade, Lexercise offers an additional 4 weeks of free remote treatment.",
                      textAlign: TextAlign.justify, style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Inter")),
                  ),

                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, right: 30, left: 30),
                    child: Row(
                        children: [
                          Text('Basic Therapy', textAlign: TextAlign.center,style: TextStyle(color: Color(0xFF0085A3), fontSize: 20, fontFamily: "Inter", fontWeight: FontWeight.w600)),
                          IconButton(icon: Icon(Icons.fast_forward),color: Color(0xFF0085A3), onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => TherapyTwo(), ), );
                          },)]
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0, left: 30, top: 10),
                    child: Text("SLD Checkers guarantees your satisfaction. If for some reason you are not satisfied with using SLD Checkers Basic Therapy, please provide us  your feedback within the first two weeks and get a full refund.",
                        textAlign: TextAlign.justify, style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Inter")),
                  ),

                  SizedBox(height: 35),
                  Padding(
                    padding: const EdgeInsets.only(top: 18, right: 30, left: 30),
                    child: Container(
                      height: 250,
                      child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            InkWell(
                              child: Container(
                                width: 200,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF0085A3)),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                                      child: RichText(
                                          textAlign: TextAlign.justify,
                                          text: TextSpan(
                                              text: "For Schools",
                                              style: TextStyle(color: Color(0xFFECB819), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: '\nSLD Checkrs for Schools',
                                                  style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                ),
                                                TextSpan(
                                                  text: '\n\nMississippi Screener',
                                                  style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                ),
                                              ]
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: InkWell(
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF0085A3)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                                        child: RichText(
                                            textAlign: TextAlign.justify,
                                            text: TextSpan(
                                                text: "For Parents",
                                                style: TextStyle(color: Color(0xFFECB819), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: '\nFree Dyslexia Test',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                  TextSpan(
                                                    text: '\nTestimonials',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                  TextSpan(
                                                    text: '\nResults',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                  TextSpan(
                                                    text: '\nDyslexia Service',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                  TextSpan(
                                                    text: '\nFull Evaluation',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                ]
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: InkWell(
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF0085A3)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                                        child: RichText(
                                            textAlign: TextAlign.justify,
                                            text: TextSpan(
                                                text: "For Therapists",
                                                style: TextStyle(color: Color(0xFFECB819), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: '\nBecome a Lexercise Therapist',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                  TextSpan(
                                                    text: '\n\nProfessional Education',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                  TextSpan(
                                                    text: '\n\nHow It Works',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                ]
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 25.0),
                              child: InkWell(
                                child: Container(
                                  width: 200,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF0085A3)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                                        child: RichText(
                                            textAlign: TextAlign.justify,
                                            text: TextSpan(
                                                text: "About Lexercise",
                                                style: TextStyle(color: Color(0xFFECB819), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: '\nAbout Us',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                  TextSpan(
                                                    text: '\nOur Therapists',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                  TextSpan(
                                                    text: '\nCareers',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                  TextSpan(
                                                    text: '\nAdvisory Board',
                                                    style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                  ),
                                                ]
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ]),
                    ),
              ),
                  SizedBox(height: 30),
                  Align(alignment: Alignment.center, child: Text('We guarantee results!', style: TextStyle(fontSize: 16, color: Color(0xFFABA7A7), fontFamily: "Poppins", fontWeight: FontWeight.w200, ),)),
                  Align(
                    alignment: Alignment.center,
                    child: MaterialButton(
                      color: Color(0xFF0085A3),
                      height: 40,
                      minWidth: 125,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Color(0xFF0085A3)),
                      ),
                      child: Text("Take Test", style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage(), ), );
                      },
                    ),
                  ),
          ]),
        ),
     ));
  }
}
