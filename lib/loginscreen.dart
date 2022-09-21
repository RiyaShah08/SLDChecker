import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sldchecker/forgotpass.dart';
import 'package:sldchecker/homescreen.dart';
import 'package:sldchecker/navigationdrawer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passController = new TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> skey = GlobalKey<ScaffoldState>();
  final _auth = FirebaseAuth.instance;

  String type = 'user';
  bool _obscureText = true;
  String userEmail = "";

  @override
  Widget build(BuildContext context) {
    
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value!.isEmpty) {
          return ("Please enter your email");
        }
        if (!RegExp('[a-z0-9]+@[a-z]+\.[a-z]{2,3}').hasMatch(value)) {
          return ("Please enter valid email");
        }
        return null;
      },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
          hintText: "@ Email",
          focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFECB819))),
          enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFECB819))),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      style: TextStyle(color: Colors.black),
    );


    final passField = TextFormField(
      autofocus: false,
      controller: passController,
      obscureText: _obscureText,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("please Enter Your Password");
        }
        if (!regex.hasMatch(value)) {
          return ("please Enter valid Password(Minimum 6 character)");
        }
      },
      onSaved: (value) {
        passController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          suffixIcon: IconButton(
            icon: Icon(_obscureText?Icons.visibility:Icons.visibility_off),
            color: Color(0xFFD9D9D9), onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
             });
            },
          ),
          focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFECB819))),
          enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFECB819))),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          ),
      ),
    );


    final loginButton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      color: Color(0xFF0085A3),
      child: MaterialButton(
        height: 40,
        elevation: 20,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
            Login(emailController.text, passController.text);
        },
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins",
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
      ),
    );


    final loginwgButton = Material(
      child: MaterialButton(
            color: Colors.white,
            height: 40,
            minWidth: 310,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
              side: BorderSide(color: Color(0xFF0085A3)),
            ),
            child: Text("Login with Google", style: TextStyle(
                color: Color(0xFF0085A3),
                fontSize: 18,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w600),),
            onPressed: () async {
              await signInWithGoogle();
              setState(() {

              });
              Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerScreen(), ), );
            },
        ),
    );

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, top: 25),
            child: Form(
              key: _formkey,

              child: Column(
                children: <Widget>[
                  Image.asset('asset/personbook.png', height: 250, width: 310,),
                  Text("Hello, Welcome Back!", style: TextStyle(color: Color(0xFF0085A3), fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 25),),
                  SizedBox(height: 30),
                  Align(
                      alignment: Alignment.topLeft, child: Text("Sign In", style: TextStyle(color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w300, fontSize: 20),)),
                  SizedBox(
                    height: 20,
                  ),
                  emailField,
                  SizedBox(
                    height: 20,
                  ),
                  passField,
                  SizedBox(
                    height: 3,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: new GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPage(), ), );
                      },
                      child: new Text("Forgot Password ?"),
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  loginButton,
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("asset/or.png", fit: BoxFit.fill),
                  SizedBox(
                    height: 10,
                  ),
                  loginwgButton
                ],
              ),
            ),
          ),
        ),
        ),
    );
  }


   void Login(String email, String password) async {
     if (_formkey.currentState!.validate()) {
      await _auth.signInWithEmailAndPassword(email: email, password: password).then((uid) => {
         Fluttertoast.showToast(msg: "Login successful"),
         Navigator.of(context).pushReplacement(
             MaterialPageRoute(builder: (context) => DrawerScreen())),
       })
           .catchError((e) {
         Fluttertoast.showToast(msg: e!.message);
       });
     }
   }


  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    userEmail = googleUser!.email;

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}
