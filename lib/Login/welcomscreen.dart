// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Add login button functionality here
                // Typically, you would navigate to the login screen.
              },
              child: Text('Login'),
            ),
            SizedBox(height: 16), // Add some spacing
            ElevatedButton(
              onPressed: () {
                // Add signup button functionality here
                // Typically, you would navigate to the signup screen.
              },
              child: Text('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
