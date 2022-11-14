import 'package:flutter/material.dart';
import 'package:sldchecker/screening.dart';

class data_image extends StatelessWidget {
  const data_image({Key? key}) : super(key: key);

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
                padding: const EdgeInsets.only(right: 30.0, left: 20),
                child: Row(
                    children: [
                      Expanded(
                        child: Image.asset('asset/a.jpg', height: 400, width: 400),
                      ),
                    ]),),

              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30),
                child: Text('See that pattern carefully and Practice it after that ..!!', style: TextStyle(color: Color(0xFF000000), fontSize: 19, fontFamily: "Poppins", fontWeight: FontWeight.w600,),
                ),),

              Padding(
                padding: const EdgeInsets.only(right: 30, left: 30, top: 10),
                child: Text('you have to upload image of written text on next page..', style: TextStyle(color: Color(0xFF0085A3), fontSize: 19, fontFamily: "Poppins", fontWeight: FontWeight.w600,),
                ),),

              Padding(
                padding: const EdgeInsets.only(left: 280.0, top: 40),
                  child: IconButton(icon: Icon(Icons.next_plan_rounded, size: 40), onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTest(), ), );
                  }// child: Image.asset('asset/arrow_for.png', height: 50, width: 50)
                  )),
            ]),
      )),
      );
  }
}
