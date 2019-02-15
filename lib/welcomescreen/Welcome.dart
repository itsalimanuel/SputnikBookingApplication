import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sputnikgroup/welcomescreen/LoginPage.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  WelcomePage(),
    routes: <String, WidgetBuilder>{
      '/LoginPage': (BuildContext context) =>  FirstLoginScreen()
    },
  ));
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() =>  _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {

  startTime() async {
    return Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacementNamed('/LoginPage')
    );
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.grey[900]),
          child: Center(
            child:  Image.asset("newlogow.png"),
          )
          ,)
    );
  }
}
