import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:sldchecker/createaccount.dart';
import 'package:sldchecker/loginscreen.dart';

class sldhome extends StatefulWidget {
  const sldhome({Key? key}) : super(key: key);

  @override
  State<sldhome> createState() => _sldhomeState();
}

class _sldhomeState extends State<sldhome> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

  GlobalKey<ScaffoldState> skey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      key: skey,

      //use stack for backgroung upar image and all other things.
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('asset/splash.png'),
                  fit: BoxFit.fill,
                )
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 45),
                  child: Column(
                    children: [
                      Text("SLD Checkers", style: TextStyle(
                          color: Color(0xFF0085A3),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.bold,
                          fontSize: 35),),

                      Image.asset('asset/mainima.png'),

                      Padding(
                        padding: const EdgeInsets.only(right: 25, left: 25),
                        child: AutoSizeText("Online Reading & Writing Therapy from Leading SLD Meachine Learning models and algorithm", textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w100,
                              fontSize: 18),),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 78),
                        child: Column(
                          children: [
                            MaterialButton(
                              color: Color(0xFF0085A3),
                              height: 40,
                              minWidth: 310,
                              elevation: 20.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text("Create Account", style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600),),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CreateAccount(), ), );
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Image.asset("asset/or.png", fit: BoxFit.fill),
                            ),
                            MaterialButton(
                              color: Colors.white,
                              height: 40,
                              minWidth: 310,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                                side: BorderSide(color: Color(0xFF0085A3)),
                              ),
                              child: Text("Already a User", style: TextStyle(
                                  color: Color(0xFF0085A3),
                                  fontSize: 18,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w600),),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Login(), ), );
                              },
                            ),
                          ],
                        ),),
                    ],),
                ),],
            ),
          ),
        ),
      ),
    );
  }
}
