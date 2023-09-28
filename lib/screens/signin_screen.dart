import 'package:flutter/material.dart';
import 'package:login/utils/colors_util.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          hexStringToColor("CB2B93"),
          hexStringToColor("9546C4"),
          hexStringToColor("5E61F4")
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, MediaQuery.of(context).size.height * 0.2, 20, 0),
          child: Column(
            children: <Widget>[logoWidget("assests/images/logo.png")],
          ),
        )),
      ),
    );
  }

  Image logoWidget(String ImageName) {
    return Image.asset(
      ImageName,
      fit: BoxFit.fitWidth,
      width: 250,
      height: 250,
      color: Colors.white,
    );
  }
}
