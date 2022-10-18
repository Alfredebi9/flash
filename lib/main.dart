import 'package:flash/screens/auth/profile_screen.dart';
import 'package:flash/screens/news/art/art_news_list.dart';
import 'package:flash/screens/news/economy/economy_news_list_widget.dart';
import 'package:flash/screens/news/general/general_news_detail.dart';
import 'package:flash/screens/news/general/general_news_list.dart';
import 'package:flash/screens/news/fun/fun_news_list_widget.dart';
import 'package:flash/screens/news/health/health_news_list_widget.dart';
import 'package:flash/screens/news/music/music_news_list_widget.dart';
import 'package:flash/screens/news/sport/sport_news_list_widget.dart';
import 'package:flash/screens/news/tech/tech_news_list_widget.dart';
import 'package:flash/widget/ourButton.dart';
import 'package:flash/screens/news/tech/tech_news_detail.dart';
import 'package:flutter/material.dart';
import 'package:flash/screens/home/home_screen.dart';
import 'package:flash/screens/auth/signin_screen.dart';
import 'package:flash/screens/auth/signup.dart';
import 'screens/news/science/science_news_list_widget.dart';

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
      home: const ProfileScreen(),
    );
  }
}
