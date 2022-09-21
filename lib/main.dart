import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sldchecker/splash.dart';


Future <void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp(

     //options: FirebaseOptions(apiKey: "AIzaSyAN0YFKtZqntsEWIjMun6vT2m5cA75WIpA", appId: "1:303086030200:web:231129f4028e10e8d94c8d", messagingSenderId: "303086030200", projectId: "sldchecker-17acc")
   );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FutureBuilder(
          future: _initialization,
          builder: (context, snapshot){
            if(snapshot.hasError){
              print("error");
            }
            if(snapshot.connectionState == ConnectionState.done){
              return sldhome();
            }
            return CircularProgressIndicator();
          },
      ),
    );
  }
}