import 'package:flutter/material.dart';
import 'package:sldchecker/homescreen.dart';
import 'package:sldchecker/testdyslexia.dart';
import 'package:sldchecker/testscreen.dart';

class ContentPage extends StatefulWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  State<ContentPage> createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {

  int _value = 1;

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
                    padding: const EdgeInsets.only(top: 30.0, right: 30, left: 30),
                    child: RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text: 'Online Learning Disability Tests',
                        style: TextStyle(color: Color(0xFFECB819), fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.w600,), /*defining default style is optional */
                        children: <TextSpan>[
                         TextSpan(
                              text: '\nFree,research-based online testing \nfor learning disabilities', style: TextStyle(color: Colors.black, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w200)),
                           TextSpan(
                               text: '\n\n\nConcerned Your Child May Have a Learning Disability?', style: TextStyle(color: Color(0xFF0085A3), fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w600)),
                          TextSpan(
                            text: '\nYou’re not alone. Approximately 20% of people are affected by dyslexia, according to the International Dyslexia Association. Additionally, almost 80% of kids who are categorized with learning disabilities in the United States fall somewhere on the dyslexia spectrum. To help parents identify if their children are at risk for a learning disability, we provides free, online testing for dyslexia and other learning disabilities.',
                            style: TextStyle(color: Colors.black, fontFamily: "Poppins", fontSize: 14, fontWeight: FontWeight.w200, ),
                          ),
                          TextSpan(
                               text: '\n\nTest Available', style: TextStyle(color: Color(0xFFECB819), fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w600)),
                         ],
                       ),
                    ),
                  ),
                   Padding(
                     padding: const EdgeInsets.only(top: 18, right: 30, left: 30),
                     child: Container(
                       height: 200,
                       child: ListView(
                         scrollDirection: Axis.horizontal,
                         children: [
                           InkWell(
                             child: Container(
                               width: 300,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF0085A3)),
                               child: Column(
                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                                     child: RichText(
                                       textAlign: TextAlign.justify,
                                       text: TextSpan(
                                         text: "Dyslexia Test",
                                         style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w600),
                                     children: <TextSpan>[
                                       TextSpan(
                                         text: '\nOver 2,000 parents have administered our research-based, free dyslexia test to their children! In 5-10 minutes, this online screener will identify if dyslexia is a likely cause of your child’s difficulties reading, writing, or spelling.',
                                         style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                       )
                                     ]
                                     )),
                                   ),
                                   Align(
                                     alignment: Alignment.bottomRight,
                                     child: Padding(
                                       padding: const EdgeInsets.only(right: 15.0),
                                       child: MaterialButton(
                                         color: Color(0xFFECB819),
                                         height: 25,
                                         minWidth: 100,
                                         elevation: 20.0,
                                         shape: RoundedRectangleBorder(
                                           borderRadius: BorderRadius.circular(5),
                                         ),
                                         child: Text("Start Now", style: TextStyle(
                                             color: Colors.white,
                                             fontSize: 12,
                                             fontFamily: "Poppins",
                                             fontWeight: FontWeight.w600),),
                                         onPressed: () {
                                           Navigator.push(context, MaterialPageRoute(builder: (context) => DyslexiaTest(), ), );
                                         },
                                       ),
                                     ),
                                   ),
                                 ],
                               ),
                             ),
                           ),
                           Padding(
                             padding: const EdgeInsets.only(left: 25.0),
                             child: InkWell(
                               child: Container(
                                 width: 300,
                                 height: 300,
                                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF0085A3)),
                                 child: Column(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                                       child: RichText(
                                           textAlign: TextAlign.justify,
                                           text: TextSpan(
                                               text: "Dysgraphia Test",
                                               style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w600),
                                               children: <TextSpan>[
                                                 TextSpan(
                                                   text: '\nThis assessment determine whether your child is at risk for dysgraphia. It consists of questions you will be given the opportunity to submit an actual sample of your child’s handwriting to a dysgraphia therapist, who will do a more thorough analysis of it.',
                                                   style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                 )
                                               ]
                                           )),
                                     ),
                                     Align(
                                       alignment: Alignment.bottomRight,
                                       child: Padding(
                                         padding: const EdgeInsets.only(right: 15.0),
                                         child: MaterialButton(
                                           color: Color(0xFFECB819),
                                           height: 25,
                                           minWidth: 100,
                                           elevation: 20.0,
                                           shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(5),
                                           ),
                                           child: Text("Start Now", style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 12,
                                               fontFamily: "Poppins",
                                               fontWeight: FontWeight.w600),),
                                           onPressed: () {
                                             Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage(), ), );
                                           },
                                         ),
                                       ),
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
                                 width: 300,
                                 height: 300,
                                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF0085A3)),
                                 child: Column(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                                       child: RichText(
                                           textAlign: TextAlign.justify,
                                           text: TextSpan(
                                               text: "Learning Disability Test",
                                               style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w600),
                                               children: <TextSpan>[
                                                 TextSpan(
                                                   text: '\nIn 5 minutes this free online questionnaire will identify the possible cause of your child’s learning difficulties. Your child does not need to be present to complete this questionnaire. After completion, we will identify if any learning disabilities are there',
                                                   style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                 )
                                               ]
                                           )),
                                     ),
                                     Align(
                                       alignment: Alignment.bottomRight,
                                       child: Padding(
                                         padding: const EdgeInsets.only(right: 15.0),
                                         child: MaterialButton(
                                           color: Color(0xFFECB819),
                                           height: 25,
                                           minWidth: 100,
                                           elevation: 20.0,
                                           shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(5),
                                           ),
                                           child: Text("Start Now", style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 12,
                                               fontFamily: "Poppins",
                                               fontWeight: FontWeight.w600),),
                                           onPressed: () {
                                             Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage(), ), );
                                           },
                                         ),
                                       ),
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
                                 width: 300,
                                 height: 300,
                                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF0085A3)),
                                 child: Column(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                                       child: RichText(
                                           textAlign: TextAlign.justify,
                                           text: TextSpan(
                                               text: "Listening Comprehension Test",
                                               style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w600),
                                               children: <TextSpan>[
                                                 TextSpan(
                                                   text: '\nHearing loss is the second most common cause of reading disorders after dyslexia. This survey will help you determine if a child with dyslexia is at risk for hearing loss within 5 minutes. Your child does not need to be present to complete this survey.',
                                                   style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                 )
                                               ]
                                           )),
                                     ),
                                     Align(
                                       alignment: Alignment.bottomRight,
                                       child: Padding(
                                         padding: const EdgeInsets.only(right: 15.0),
                                         child: MaterialButton(
                                           color: Color(0xFFECB819),
                                           height: 25,
                                           minWidth: 100,
                                           elevation: 20.0,
                                           shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(5),
                                           ),
                                           child: Text("Start Now", style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 12,
                                               fontFamily: "Poppins",
                                               fontWeight: FontWeight.w600),),
                                           onPressed: () {
                                             Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage(), ), );
                                           },
                                         ),
                                       ),
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
                                 width: 300,
                                 height: 300,
                                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF0085A3)),
                                 child: Column(
                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
                                       child: RichText(
                                           textAlign: TextAlign.justify,
                                           text: TextSpan(
                                               text: "Dyslexia Screener for Schools",
                                               style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w600),
                                               children: <TextSpan>[
                                                 TextSpan(
                                                   text: '\ndyslexia screening at all elementary schools for kindergarten and first-grade students. To help school staff with this task, We is providing a free online screening tool ',
                                                   style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w200),
                                                 )
                                               ]
                                           )),
                                     ),
                                     Align(
                                       alignment: Alignment.bottomRight,
                                       child: Padding(
                                         padding: const EdgeInsets.only(right: 15.0),
                                         child: MaterialButton(
                                           color: Color(0xFFECB819),
                                           height: 25,
                                           minWidth: 100,
                                           elevation: 20.0,
                                           shape: RoundedRectangleBorder(
                                             borderRadius: BorderRadius.circular(5),
                                           ),
                                           child: Text("Start Now", style: TextStyle(
                                               color: Colors.white,
                                               fontSize: 12,
                                               fontFamily: "Poppins",
                                               fontWeight: FontWeight.w600),),
                                           onPressed: () {
                                             Navigator.push(context, MaterialPageRoute(builder: (context) => TestPage(), ), );
                                           },
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   SizedBox(height: 40,),
                    Align(
                       alignment: Alignment.center,
                       child: MaterialButton(
                         height: 40,
                         minWidth: 300,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(5),
                           side: BorderSide(color: Color(0xFF0085A3))
                         ),
                         child: Text("Search...", style: TextStyle(
                             color: Colors.black,
                             fontSize: 14,
                             fontFamily: "Poppins",
                             fontWeight: FontWeight.w600),),
                         onPressed: () {
                           //Navigator.push(context, MaterialPageRoute(builder: (context) => ContentPage(), ), );
                         },
                       ),
                     ),
                   Align(alignment: Alignment.center, child: Text('Privacy, Terms of Use, and Copyright Media', style: TextStyle(fontSize: 12, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w200, ),)),
                ]
            ),
          ),
        ),
    );
  }
}
