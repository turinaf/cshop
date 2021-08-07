import 'package:cshop/screens/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "CSHOP",
      home: WelcomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
