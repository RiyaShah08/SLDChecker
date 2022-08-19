import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.only(left: 220.0),
                      child: Image.asset('asset/profile.png', height: 45, width: 45,),
                    ),),
             ]),),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: RichText(
                textAlign: TextAlign.justify,
                text: TextSpan(
                  text: 'Online Learning Disability Tests',
                  style: TextStyle(color: Color(0xFFECB819), fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.w600,), /*defining default style is optional */
                  children: <TextSpan>[
                    TextSpan(
                        text: '\nFree,research-based online testing for learning disabilities', style: TextStyle(color: Colors.black, fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.w200)),
                  ],
                ),
              ),
            ),
          Text("Concerned Your Child May Have a Learning Disability?", style: TextStyle(fontSize: 18, fontFamily: "Poppins", fontWeight: FontWeight.w600, color: Color(0xFF0085A3)),),
          Text("Test Available", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20,),),
        ]),
        ),
      ),
    );
  }
}
