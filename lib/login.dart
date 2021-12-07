import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_teman/home.dart';

class Login extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: LoginPage(title: 'Teman'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/teman.png',
              width: 400,
              height: 400,
            ),
            Text(
              'Login',
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                );
              },
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(30))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/google.png',
                    width: 20,
                    height: 20,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Google'
                  ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              )
            ),
            RaisedButton(
                onPressed: () {print("Nice");},
                color: Color(0xFF3B569D),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/facebook.png',
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Facebook',
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )
            ),
            Text(
              'tidak bisa login?'
            )
          ],
        ),
      ),
    );
  }
}