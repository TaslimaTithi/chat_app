
import 'package:chat_app/registration.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/helper.dart';

class LoginScreen extends StatefulWidget {
  static const String id = 'login';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Container(
              height: 150,
              child: Image.asset('images/logo.jpg'),
            ),

            SizedBox(
              height: 30.0,
            ),

            TextField(
              textAlign: TextAlign.center,
              onChanged: (value){

              },
              decoration: TextFieldDecoration.copyWith(hintText: "Enter your user name / email"),

            ),

            SizedBox(
              height: 10.0,
            ),

            TextField(
              obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value){

                },
                decoration: TextFieldDecoration.copyWith(hintText: "Enter your password")
            ),

            SizedBox(
              height: 20.0,
            ),
            RoundedButton(
              title: "Log In",
              colour: Colors.lightGreen,
              onPressed: (){
              },
            ),
            Text(
              "Don't have an account?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  height: 2
              ),
            ),
            SizedBox(
              height: 10,
            ),

            RoundedButton(
              title: "Register",
              colour: Colors.green,
              onPressed: (){
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),

          ],
          crossAxisAlignment: CrossAxisAlignment.stretch,

        ),
      ),

    );
  }
}
