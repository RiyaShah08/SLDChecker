import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sldchecker/homescreen.dart';
import 'package:sldchecker/navigationdrawer.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'model/usermodel.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passController = new TextEditingController();
  final TextEditingController cfpassController = new TextEditingController();
  final _auth = FirebaseAuth.instance;

  GlobalKey<FormState> key = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> skey = GlobalKey<ScaffoldState>();

  String type = 'user';
  bool _obscureText = true;
  bool _obscureText1 = true;
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
          )),
      style: TextStyle(color: Colors.black),
    );


    final confirmpass = TextFormField(
      autofocus: false,
      controller: cfpassController,
      obscureText: _obscureText1,
      validator: (value) {
        if (cfpassController.text.length > 6 && passController.text != value) {
          return "Password doesn't match";
        }
        return null;
      },
      onSaved: (value) {
        cfpassController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          suffixIcon: IconButton(
            icon: Icon(_obscureText1?Icons.visibility:Icons.visibility_off),
            color: Color(0xFFD9D9D9), onPressed: () {
              setState(() {
                _obscureText1 = !_obscureText1;
              });
            },
          ),
          focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFECB819))),
          enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color: Color(0xFFECB819))),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
          )),
      style: TextStyle(color: Colors.black),
    );

    final signupbutton = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      color: Color(0xFF0085A3),
      child: MaterialButton(
        height: 40,
        elevation: 20,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          signUp(emailController.text, passController.text);
        },
        child: Text(
          "SignUp",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins",
              color: Colors.white,
              fontWeight: FontWeight.w600),
        ),
      ),
    );

    final signwgbutton = Material(
      child: MaterialButton(
        color: Colors.white,
        height: 40,
        minWidth: 310,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: Color(0xFF0085A3)),
        ),
        child: Text("SignUp with Google", style: TextStyle(
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
                  Image.asset('asset/personbook.png', height: 240, width: 330,),
                  Text("Hello, Welcome!", style: TextStyle(color: Color(0xFF0085A3), fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 25),),
                  SizedBox(height: 15),
                  Align(
                      alignment: Alignment.topLeft, child: Text("Sign Up", style: TextStyle(color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.w300, fontSize: 20),)),
                  SizedBox(
                    height: 10,
                  ),
                  emailField,
                  SizedBox(
                    height: 10,
                  ),
                  passField,
                  SizedBox(
                    height: 10,
                  ),
                  confirmpass,
                  SizedBox(
                    height: 40,
                  ),
                  signupbutton,
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset("asset/or.png", fit: BoxFit.fill),
                  SizedBox(
                    height: 10,
                  ),
                  signwgbutton,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

   void signUp(String email, String password) async {
     if (_formkey.currentState!.validate()) {
       await _auth
           .createUserWithEmailAndPassword(email: email, password: password)
           .then((value) => postDetailsToFirestore())
           .catchError((e) {
         Fluttertoast.showToast(msg: e!.message);
       });
     }
   }

 postDetailsToFirestore() async {
      FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
      User? user = _auth.currentUser;

      UserModel userModel = UserModel();

      userModel.email = user!.email;
      userModel.uid = user.uid;

      await firebaseFirestore.collection("users").doc(user.uid).set(userModel.toMap());
      Fluttertoast.showToast(msg: "Account created successfully");
      Navigator.pushAndRemoveUntil((context),
          MaterialPageRoute(builder: (context) => DrawerScreen()),
              (route) => false);
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
