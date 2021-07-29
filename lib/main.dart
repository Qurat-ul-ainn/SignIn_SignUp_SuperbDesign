import 'package:flutter/material.dart';
import 'package:signin/signin_page.dart';

void main(){runApp(SignIn(),);}

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
        child:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade900,Colors.teal],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child:SignInPage(),
        ),
    ),),
    );
  }
}
