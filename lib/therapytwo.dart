import 'package:flutter/material.dart';
import 'package:sldchecker/testscreen.dart';

class TherapyTwo extends StatelessWidget {
  const TherapyTwo({Key? key}) : super(key: key);

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
                          textAlign: TextAlign.justify,
                          text: const TextSpan(
                            text: 'Reading, Writing & Spelling',
                            style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600,), /*defining default style is optional */
                            children: <TextSpan>[
                              TextSpan(
                                  text: '\nTherapy', style: TextStyle(color: Color(0xFF0085A3), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600)),
                              TextSpan(
                                  text: ' for Chlidren', style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                      ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0, left: 30),
                    child: Image.asset('asset/therapytwo.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        text: 'Trusted Lexercise to identify and treat dyslexia and other learning difficulties.',
                        style: TextStyle(color: Color(0xFF0085A3), fontSize: 13, fontFamily: "Poppins", fontWeight: FontWeight.w600,), /*defining default style is optional */
                        children: <TextSpan>[
                          TextSpan(
                              text: '\nAll  therapy includes our structured literacy curriculum honed over ML model. You also get our one-of-a-kind games, videos and activities between sessions to reinforce what your child is learning between lessons',
                              style: TextStyle(color: Colors.black, fontSize: 13, fontFamily: "Poppins", fontWeight: FontWeight.w200)),
                          ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Align(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        color: Color(0xFF0085A3),
                        height: 45,
                        minWidth: 300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), side: BorderSide(color: Color(0xFF0085A3)),),
                        child: Text("Professional Therapy", style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TherapyTwo(), ), );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: MaterialButton(
                        color: Color(0xFF0085A3),
                        height: 45,
                        minWidth: 300,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5), side: BorderSide(color: Color(0xFF0085A3)),),
                        child: Text("Basic Therapy", style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600)),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => TherapyTwo(), ), );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, right: 30, left: 30),
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                          text: 'Children who complete the',
                          style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w500,), /*defining default style is optional */
                          children: <TextSpan>[
                            TextSpan(
                                text: '\nour program ', style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w500)),
                            TextSpan(
                                text: 'improve 3', style: TextStyle(color: Color(0xFFECB819), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600)),
                            TextSpan(
                                text: '\ngrade levels',
                                style: TextStyle(color: Color(0xFFECB819), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600)
                            ),
                            TextSpan(
                                text: ' on average!', style: TextStyle(color: Colors.black, fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w500)),
                          ]),
                    ),
                  ),

                  SizedBox(height: 30),
                  Align(alignment: Alignment.center, child: Image.asset("asset/therapypo.png", fit: BoxFit.fill, height: 300, width: 300,)),

                  Align(alignment: Alignment.center, child: Text('Not sure what is right for your child?', style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w600, ),)),
                  Align(
                    alignment: Alignment.center,
                    child: MaterialButton(
                      color: Color(0xFFECB819),
                      height: 30,
                      minWidth: 275,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Color(0xFFECB819)),
                      ),
                      child: Text("Schedule a Call with Therapist", style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),),
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage(), ), );
                      },
                    ),
                  ),

                  SizedBox(height: 30),

                  Align(alignment: Alignment.center, child: Text('Want to try our games?', style: TextStyle(fontSize: 16, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w600, ),)),
                  Align(
                    alignment: Alignment.center,
                    child: MaterialButton(
                      color: Color(0xFFECB819),
                      height: 30,
                      minWidth: 157,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Color(0xFFECB819)),
                      ),
                      child: Text("Try a game now ", style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600),),
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage(), ), );
                      },
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
