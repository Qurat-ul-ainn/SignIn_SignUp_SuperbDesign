import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:signin/signup_page.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(bottom: 60.0),
              child: Transform.rotate(
                  angle: 3 * pi / 2,
                  child: Text(
                    'Sign in',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            ),
            Expanded(
              child: Text(
                'We change when we want....',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 70.0),
            hintText: 'Name',
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.teal.shade300,
            ),
          ),
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: 70.0),
            hintText: 'Password',
            border: InputBorder.none,
            hintStyle: TextStyle(
              color: Colors.teal.shade300,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              padding: EdgeInsets.only(left: 150.0),
              onPressed: () {},
              child: Text(
                'Forgot Password',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 180.0,right: 30.0),
              child: FlatButton(
                padding: EdgeInsets.only(left: 40.0),
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
                color: Colors.white,
                child: Row(
                  children: <Widget>[
                    Text(
                      'Ok',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.teal,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.teal.shade300,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 35.0, top: 20.0),
                  child: Text(
                    'Your first time?',
                    style: TextStyle(
                      color: Colors.teal.shade300,
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return SignUpPage();
                    }));
                  },
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Sign up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
