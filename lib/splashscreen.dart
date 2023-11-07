// ignore_for_file: use_key_in_widget_constructors, use_build_context_synchronously, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fooddash/Login/welcomscreen.dart';
import 'dart:async';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

  Future<void> navigateToWelcomeScreen(BuildContext context) async {
    await Future.delayed(
        Duration(seconds: 3)); // Simulate a delay, e.g., 3 seconds
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => WelcomeScreen(),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red, // Set your background color here
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/logo.png', // Your logo image path
              width: 200, // Adjust the size as needed
            ),
          ],
        ),
      ),
    );
  }
}
