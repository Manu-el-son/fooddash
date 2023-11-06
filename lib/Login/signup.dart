// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
//import 'package:passwordfield/passwordfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  //final _formkey = GlobalKey<FormState>();
  final numberContoller = TextEditingController();
  final emailContoller = TextEditingController();
  final passContoller = TextEditingController();
  final confirmpassContoller = TextEditingController();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Register',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(235, 0, 35, 100))),
              Text("Create your new account",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(97, 97, 97, 100))),
              SizedBox(height: 35),
              TextFormField(
                  style: const TextStyle(fontFamily: 'Montserrat'),
                  keyboardType: TextInputType.phone,
                  controller: numberContoller,
                  decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)))),
              SizedBox(height: 20),
              TextFormField(
                  style: const TextStyle(fontFamily: 'Montserrat'),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailContoller,
                  decoration: InputDecoration(
                      labelText: "Email Address",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)))),
              SizedBox(height: 20),
              TextFormField(
                  style: const TextStyle(fontFamily: 'Montserrat'),
                  keyboardType: TextInputType.visiblePassword,
                  controller: passContoller,
                  decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)))),
            ],
          )),
        ),
      ),
    );
  }
}
