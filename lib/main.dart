import 'package:flutter/material.dart';
import 'package:flash/screens/home/home_screen.dart';
import 'package:flash/screens/auth/signin_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Poppins'),
      title: 'Flash',
      debugShowCheckedModeBanner: false,
      home: const SigninScreen(),
    );
  }
}
