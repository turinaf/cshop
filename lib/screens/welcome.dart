import 'package:cshop/custom/colors.dart';
import 'package:cshop/screens/home.dart';
import 'package:cshop/screens/login.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [CusColors.bgColor1, CusColors.bgColor2],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 4 / 10,
                left: MediaQuery.of(context).size.width * 1.8 / 5,
                child: Text(
                  "Welcome to",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 4.4 / 10,
                left: MediaQuery.of(context).size.width * 2 / 5,
                child: Text(
                  "CShop",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * 0.03,
                left: MediaQuery.of(context).size.width * 0.04,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.all(20),
                  child: Row(
                    // mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      FloatingActionButton(
                        backgroundColor: Colors.white,
                        child: const Icon(Icons.home, color: Color(0xFFBDAB6D)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
