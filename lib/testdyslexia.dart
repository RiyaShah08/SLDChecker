import 'package:flutter/material.dart';
import 'package:sldchecker/contenttest.dart';
import 'package:sldchecker/testque.dart';
import 'package:status_stepper/status_stepper.dart';

class DyslexiaTest extends StatefulWidget {
  const DyslexiaTest({Key? key}) : super(key: key);

  @override
  State<DyslexiaTest> createState() => _DyslexiaTestState();
}

class _DyslexiaTestState extends State<DyslexiaTest> {
  final statuses = List.generate(
    3, (index) => SizedBox.square(
      dimension: 32,
      child: Center(
        heightFactor: 20,
          child: Text('$index', style: TextStyle(color: Colors.white),)),
    ),
  );

   // List<StatusStepper> statuses = [
   //   StepperData(
   //     title: "Take the 5-10",
   //     subtitle: 'minute assessment with your child.',
   //   ),
   //  StepperData(
   //     title: "Learn the risk of ",
   //     subtitle: "dyslexia immediately upon completion.",
   //   ),
   //   StepperData(
   //     title: "Identify an effective",
   //     subtitle: "treatment plan.",
   //   ),
   // ];

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
                  ),),
                ]),),

          Padding(
            padding: const EdgeInsets.only(right: 30, left: 30, top: 20),
            child: Text('Free dyslexia test for Children', style: TextStyle(color: Color(0xFFECB819), fontSize: 19, fontFamily: "Poppins", fontWeight: FontWeight.w600,),
            ),),

          Align(alignment: Alignment.center, child: Image.asset('asset/dytest.png', height: 300, width: 300, fit: BoxFit.fill)),
          Padding(
            padding: const EdgeInsets.only(top: 30.0, left: 30),
            child: Text("How Our Dyslexia Test Works?", style: TextStyle(color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w200, fontSize: 16)),
          ),

          Padding(
              padding: const EdgeInsets.only(right: 45, left: 40, top: 15),
              child: StatusStepper(
                disabledColor: Color(0xFF0085A3),
                activeColor: Colors.white,
                children: statuses,
                connectorThickness: 3,
                connectorCurve: Curves.easeInOutBack,
                ),
            ),

          //Richtext
          Padding(
              padding: const EdgeInsets.only(right: 30.0, left: 15, top: 5),
              child: Row(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                    text: 'Take the 5-10',
                    style: TextStyle(color: Colors.black, fontSize: 8, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                    children: <TextSpan>[
                      TextSpan(
                          text: '\nminute assessment', style: TextStyle(color: Colors.black, fontSize: 8, fontFamily: "Poppins", fontWeight: FontWeight.w200)),
                      TextSpan(
                          text: '\nwith your child.', style: TextStyle(color: Colors.black, fontSize: 8, fontFamily: "Poppins", fontWeight: FontWeight.w200)),
                    ],),
                    ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45, top: 5),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Learn the risk of',
                          style: TextStyle(color: Colors.black, fontSize: 8, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                      children: <TextSpan> [
                        TextSpan(
                          text: '\ndyslexia',
                          style: TextStyle(color: Colors.black, fontSize: 8, fontFamily: "Poppins", fontWeight: FontWeight.w200)),
                        TextSpan(
                          text: '\nimmediately upon',
                          style: TextStyle(color: Colors.black, fontSize: 8, fontFamily: "Poppins", fontWeight: FontWeight.w200)),
                        TextSpan(
                            text: '\ncompletion.',
                            style: TextStyle(color: Colors.black, fontSize: 8, fontFamily: "Poppins", fontWeight: FontWeight.w200)),
                      ]
                    ),
                   ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 53, top: 5),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Identify an',
                          style: TextStyle(color: Colors.black, fontSize: 8, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                          children: <TextSpan> [
                            TextSpan(
                                text: '\neffective',
                                style: TextStyle(color: Colors.black, fontSize: 8, fontFamily: "Poppins", fontWeight: FontWeight.w200)),
                            TextSpan(
                                text: '\ntreatment plan.',
                                style: TextStyle(color: Colors.black, fontSize: 8, fontFamily: "Poppins", fontWeight: FontWeight.w200)),
                          ]
                      ),
                    ),
                  )],
              )),

          //button
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Align(
              alignment: Alignment.center,
              child: MaterialButton(
                color: Color(0xFFECB819),
                height: 40,
                minWidth: 260,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text("Screen Your Child for Free Today!", style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: "Poppins",
                    fontWeight: FontWeight.w600),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContentPage(), ), );
                },
              ),
            ),
          ),
          SizedBox(height: 40),
          Align(alignment: Alignment.center, child: Text('Not sure if testing is needed?', style: TextStyle(fontSize: 20, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w600))),

          //last serach button
          Align(
            alignment: Alignment.center,
            child: MaterialButton(
              height: 40,
              minWidth: 300,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Color(0xFF0085A3))
              ),
              child: Text("we got your back", style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600),),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Testques(), ), );
                },
            ),
          ),
         ]),
        ),
      ),
    );
  }
}
