// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fooddash/Login/login.dart';
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
                        borderRadius: BorderRadius.circular(8)),
                    suffix: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(passToggle
                          ? Icons.visibility
                          : Icons.visibility_off_rounded),
                    ),
                  )),
              SizedBox(height: 20),
              TextFormField(
                  style: TextStyle(fontFamily: 'Montserrat'),
                  keyboardType: TextInputType.visiblePassword,
                  controller: confirmpassContoller,
                  decoration: InputDecoration(
                      labelText: "Confirm Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8)))),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                    color: Color(0xFFE60023),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                      child: Text("Register",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w900,
                              color: Colors.white))),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Already have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Urbanist',
                    )),
                InkWell(onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LogInScreen(),
                      ));
                })
              ])
            ],
          )),
        ),
      ),
    );
  }
}
