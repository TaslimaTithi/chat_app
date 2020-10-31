
import 'package:flutter/material.dart';
import 'package:chat_app/helper.dart';
import 'package:chat_app/login.dart';
import 'package:chat_app/registration.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome-screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                SizedBox(width: 30.0,),
                Container(
                  height: 80,
                  child: Image.asset('images/logo.jpg'),
                ),
                SizedBox(width: 10,),

                Text('ChitChat', style: TextStyle(
                  color: Color(0xff006000),
                  fontSize: 40.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Lobster',
                ),
                ),
              ],
            ),
            SizedBox(height: 30,),

            RoundedButton(
              title: "Register",
              colour: Colors.green,
              onPressed: (){
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
            ),

            RoundedButton(
              title: "Log In",
              colour: Colors.lightGreen,
              onPressed: (){
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),

          ],
        ),
      ),

    );
  }
}
