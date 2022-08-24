import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  State<ForgotPage> createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailController = new TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> skey = GlobalKey<ScaffoldState>();

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

    final forgotpass = Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(5),
      color: Color(0xFF0085A3),
      child: MaterialButton(
        height: 40,
        elevation: 20,
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          //Login(emailController.text);
        },
        child: Text(
          "Submit",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              fontFamily: "Poppins",
              color: Colors.white,
              fontWeight: FontWeight.w700),
        ),
      ),
    );


    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
          child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20, top: 100),
          child: Form(
            key: _formkey,

            child: Column(
              children: <Widget>[
                Image.asset('asset/forgotpass.png', height: 290, width: 310,),
                Padding(
                  padding: const EdgeInsets.only(top: 78.0,),
                  child: Text("Reset Password", style: TextStyle(color: Color(0xFF0085A3), fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 25),),
                ),
                SizedBox(height: 30),
                emailField,
                SizedBox(
                  height: 20,
                ),
                forgotpass,
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text("Terms and conditions applied", style: TextStyle(color: Color(0xFF9A9A9A), fontSize: 13, fontWeight: FontWeight.w200, fontFamily: "Inter"),),
                ),
              ],),),
          ),),
      ),
    );
  }
}
