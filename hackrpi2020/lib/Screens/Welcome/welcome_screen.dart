import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:hackrpi2020/Screens/Welcome/backgroun.dart';
import 'package:hackrpi2020/Screens/Welcome/register.dart';
import 'package:hackrpi2020/constants.dart';
import 'package:hackrpi2020/main.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Body());
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "data",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // SvgPicture.asset('',height: size.height * 0.4)
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: size.width * 0.8,
            child: ClipRRect(
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                color: kPrimaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MyHomePage();
                      },
                    ),
                  );
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20.0),
            width: size.width * 0.8,
            child: ClipRRect(
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                color: kPrimaryColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return RegisterPage();
                      },
                    ),
                  );
                },
                child: Text(
                  "Register",
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
