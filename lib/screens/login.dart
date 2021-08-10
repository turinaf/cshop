import 'package:cshop/custom/colors.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLogin = true;
  String _name = "";
  String _email = "";
  String _phone = "";
  String password = "";
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget _nameField() {
    return TextFormField(
      decoration: const InputDecoration(
          labelText: "Name *",
          hintText: "Enter your name",
          icon: Icon(Icons.person)),
      validator: (String? value) {
        return (value == null || value.contains('@')
            ? "Name is requied, don't use @"
            : null);
      },
      onSaved: (String? value) {
        _name = value!;
      },
    );
  }

  Widget _emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email *",
        hintText: "Enter your email",
        icon: Icon(Icons.email),
      ),
      validator: (String? value) {
        return value == null ? "Email is required" : null;
      },
      onSaved: (String? value) {
        _email = value!;
      },
    );
  }

  Widget _phoneField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          labelText: "Phone *",
          hintText: "Phone number",
          icon: Icon(Icons.phone)),
      validator: (String? value) {
        return value == null ? "Phone is require" : null;
      },
    );
  }

  Widget _passwordField() {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          labelText: "Password *",
          hintText: "Create password",
          icon: Icon(Icons.lock)),
      validator: (String? value) {
        return value == null ? "Password is require" : null;
      },
    );
  }

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
            ),
            Container(
                child: isLogin
                    ? Container(
                        margin: EdgeInsets.only(top: 10),
                        width: MediaQuery.of(context).size.width * 0.82,
                        child: Form(
                          // Login form
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _emailField(),
                              _passwordField(),
                              SizedBox(
                                height: 20,
                              ),
                              // ignore: deprecated_member_use
                              RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                color: CusColors.bgColor1,
                              )
                            ],
                          ),
                        ),
                      )
                    : Container(
                        margin: EdgeInsets.only(top: 18),
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width * 0.82,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: kElevationToShadow[5]),
                        child: Form(
                          // Signup Form

                          child: Column(
                            children: [
                              _nameField(),
                              _emailField(),
                              _phoneField(),
                              _passwordField(),
                              SizedBox(
                                height: 20,
                              ),
                              // ignore: deprecated_member_use
                              RaisedButton(
                                onPressed: () {},
                                child: Text(
                                  "Sign up",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                color: CusColors.bgColor1,
                              )
                            ],
                          ),
                        ),
                      ))
          ],
        ),
      ),
    );
  }
}
