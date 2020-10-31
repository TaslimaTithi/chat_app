
import 'package:chat_app/welcome.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/helper.dart';
import 'package:chat_app/login.dart';
import 'package:chat_app/registration.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },

    );
  }
}
