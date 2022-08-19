import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_input_field/flutter_input_field.dart';
import 'package:sldchecker/createaccount.dart';
import 'package:sldchecker/drawer.dart';
import 'package:sldchecker/homescreen.dart';
import 'package:sldchecker/homescreen.dart';
import 'package:validation_textformfield/validation_textformfield.dart';


class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final _formkey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passController = new TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> skey = GlobalKey<ScaffoldState>();

  //final _auth = FirebaseAuth.instance;
  String type = 'user';
  bool pass = false;
  bool cpass = false;

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
      style: TextStyle(color: Color(0xFFD9D9D9)),
    );

    final passField = TextFormField(
      autofocus: false,
      controller: passController,
      obscureText: true,
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
            icon: Icon(pass?Icons.visibility:Icons.visibility_off),
            color: Color(0xFFD9D9D9), onPressed: () {
            setState(() {
              pass = !pass;
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
      style: TextStyle(color: Color(0xFFD9D9D9)),
    );


    final confirmpass = TextFormField(
      autofocus: false,
      controller: passController,
      obscureText: true,
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return ("please Enter correct Password");
        }
        if (!regex.hasMatch(value)) {
          return ("wrong password");
        }
      },
      onSaved: (value) {
        passController.text = value!;
      },

      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          suffixIcon: IconButton(
            icon: Icon(cpass?Icons.visibility:Icons.visibility_off),
            color: Color(0xFFD9D9D9), onPressed: () {
              setState(() {
                cpass = !cpass;
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
      style: TextStyle(color: Color(0xFFD9D9D9)),
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
          //logIn(emailController.text, passController.text);
        },
        child: Text(
          "SignUp",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins",
              color: Colors.white,
              fontWeight: FontWeight.w700),
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
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePaege(), ), );
        },
      ),
    );

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, top: 25),
            child: Form(
              key: _formkey,

              child: Column(
                children: <Widget>[
                  Image.asset('asset/personbook.png', height: 240, width: 330,),
                  Text("Hello, Welcome!", style: TextStyle(color: Color(0xFF0085A3), fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 25),),
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

// void logIn(String email, String password) async {
//   if (_formkey.currentState!.validate()) {
//     await _auth
//         .signInWithEmailAndPassword(email: email, password: password)
//         .then((uid) => {
//       Fluttertoast.showToast(msg: "Login successful"),
//       Navigator.of(context).pushReplacement(
//           MaterialPageRoute(builder: (context) => homescreen())),
//     })
//         .catchError((e) {
//       Fluttertoast.showToast(msg: e!.message);
//     });
//   }
// }
}
