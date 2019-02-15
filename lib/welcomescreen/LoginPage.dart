import 'package:flutter/material.dart';
import 'package:sputnikgroup/welcomescreen/RegisterPage.dart';
class FirstLoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 70.0,
            child: ClipPath(
              clipper: MyClipper(),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 540.0,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(20.0)),
              ),
            ),
          ),
          Positioned(
            top: 80.0,
            left: MediaQuery.of(context).size.width - 170.0,
            child: Column(
              children: <Widget>[
                Container(
                  width: 130.0,
                  height: 130.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("newlogow.png"))),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        'Sputnik',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0, left: 5.0),
                      child: Text(
                        'Group',
                        style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 290.0,
            left: 40.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Welcome in Sputnik',
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
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Text(
                    'Forgot Password ?',
                    style: TextStyle(color: Colors.black, fontSize: 15.0),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 180.0,
            left: MediaQuery.of(context).size.width - 120.0,
            child: Container(
              width: 170.0,
              height: 40.0,
              child: RaisedButton(
                splashColor: Colors.yellow,
                color: Colors.red,
                padding: EdgeInsets.all(12.0),
                shape: StadiumBorder(),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 230.0,
            left: MediaQuery.of(context).size.width - 150.0,
            child: Container(
              width: 200.0,
              height: 40.0,
              child: RaisedButton(
                splashColor: Colors.yellow,
                color: Colors.red,
                padding: EdgeInsets.all(12.0),
                shape: StadiumBorder(),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                  );
                },
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      
      ),
      
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0.0, size.height - 80.0);

    var firstControlPoint = new Offset(50.0, size.height);
    var firstEndPoint = new Offset(size.width / 3.5, size.height - 45.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.lineTo(size.width - 30.0, size.height / 2);

    var secondControlPoint =
        new Offset(size.width + 15.0, size.height / 2 - 60.0);
    var secondEndPoint = new Offset(140.0, 50.0);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    var thirdControlPoint = new Offset(50.0, 0.0);
    var thirdEndPoint = new Offset(0.0, 100.0);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}