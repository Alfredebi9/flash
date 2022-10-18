import 'package:flash/widget/news_detailed_widget.dart';
import 'package:flutter/material.dart';

class MusicNewsDetailScreen extends StatelessWidget {
  const MusicNewsDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();

    return const Scaffold(
      body: NewsDetailWidget(
        title:
            "The world's higest paid footballers and managers in 2020 have been named-GIVEMESPORT",
        imageUrl: 'asset/images/music.jpg',
        author: 'Rob Swan',
        dateTime: '08 February 2020 10:4am',
        body:
            "French publication L'Equipe have published their annual list of the current higest paid players and vcoaches in world football.\nLioonel Messi and Cristiano Ronaldo are top of the player's list,which wont come as a huge shock.\nHowever,it may suprise football fans",
      ),
    );
  }
}
