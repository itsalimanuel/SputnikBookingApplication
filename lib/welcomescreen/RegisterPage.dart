import 'package:flutter/material.dart';
import 'package:sputnikgroup/TourismScreen/TourismPage.dart';
import 'package:sputnikgroup/welcomescreen/LoginPage.dart';

class RegisterPage extends StatefulWidget {
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 50.0,
            child: ClipPath(
              clipper: MyClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 540.0,
                decoration: BoxDecoration(
                  color: Colors.yellowAccent,
                  borderRadius: BorderRadius.circular(20.0)
                ),
              ),
            ),
          ),
          Positioned(
            top: 40.0,
            left: MediaQuery.of(context).size.width - 170.0,
            child: Column(
              children: <Widget>[
                Container(
                  width: 150.0,
                  height: 150.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("newlogow.png")
                    )
                  ),
                )
              ],
            ),
          ),
         Positioned(
            top: 190.0,
            left: 40.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Register',
                  style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight: FontWeight.bold),
                ),
               
                 Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Container(
                    width: 250.0,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Username',
                          hintText: 'Enter your username',
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.account_circle,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(top: 12.0),
                  child: Container(
                    width: 250.0,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter your Email',
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.account_circle,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Container(
                    width: 250.0,
                    child: TextField(
                      decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.security,
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0))),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 200.0,
            right: 180.0,
            child: Container(
              width: 170.0,
              height: 40.0,
              child: RaisedButton(
                splashColor: Colors.yellow,
                color: Colors.red,
                padding: EdgeInsets.all(12.0),
                shape: StadiumBorder(),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstLoginScreen()),
                  );
                },
                child: Text(
                  'Back',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 170.0,
            left: MediaQuery.of(context).size.width - 120.0,
            child: Container(
              width: 170.0,
              height: 40.0,
              child: RaisedButton(
                splashColor: Colors.yellow,
                color: Colors.red,
                padding: EdgeInsets.all(12.0),
                shape: StadiumBorder(),
                onPressed: () {
                   Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}