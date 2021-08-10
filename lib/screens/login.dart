import 'package:cshop/custom/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Connect",
          style: TextStyle(color: CusColors.bgColor1),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.keyboard_arrow_left,
            color: CusColors.bgColor1,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0, left: 25, right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 48,
                      decoration: BoxDecoration(
                          color: isLogin ? CusColors.bgColor1 : Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          boxShadow: kElevationToShadow[6]),
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: isLogin ? Colors.white : Colors.black,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isLogin = !isLogin;
                      });
                    },
                    child: Container(
                      width: 125,
                      height: 48,
                      decoration: BoxDecoration(
                          color: isLogin ? Colors.white : CusColors.bgColor1,
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          boxShadow: kElevationToShadow[6]),
                      child: Center(
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                              color: isLogin ? Colors.black : Colors.white,
                              fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
