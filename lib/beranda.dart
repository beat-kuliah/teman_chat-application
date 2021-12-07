import 'package:flutter/material.dart';

class Beranda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BerandaPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class BerandaPage extends StatefulWidget {
  BerandaPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _BerandaPageState createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                "Beranda"
            ),
            Text(
                "Beranda"
            ),
          ],
        ),
      ),
    );
  }
}