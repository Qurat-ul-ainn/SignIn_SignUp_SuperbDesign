import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:math';
import 'package:signin/signin_page.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  String _selectedDate = "01 01 1999";

  Future<void> _openDatePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: new DateTime(2015),
      lastDate: new DateTime(2020),
    );
    if (picked != null) {
      setState(() {
        _selectedDate = picked.toLocal().toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.teal.shade900, Colors.teal],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
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
                        'Sign up',
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
                      'We can start something new...',
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
                  hintText: 'Email',
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
              Row(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 70.0),
                    child: Text(
                      'Birth ' + _selectedDate,
                      style: TextStyle(
                        color: Colors.teal.shade300,
                      ),
                    ),
                  ),
                  FlatButton(
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.teal.shade300,
                    ),
                    onPressed: () {
                      _openDatePicker(context);
                    },
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 150.0),
                    child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.white,
                      child: Icon(
                        Icons.arrow_forward,
                        color: Colors.teal.shade300,
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 35.0, top: 20.0),
                        child: Text(
                          'Have we met before?',
                          style: TextStyle(
                            color: Colors.teal.shade300,
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return SignInPage();
                            }),
                          );
                        },
                        padding: EdgeInsets.only(top: 20.0),
                        child: Text(
                          'Sign in',
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
          ),
        ),
      ),
    );
  }
}
