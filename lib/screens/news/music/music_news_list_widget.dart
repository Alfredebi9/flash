import 'package:flash/utility/data2.dart';
import 'package:flash/utility/my_app_color.dart';
import 'package:flash/widget/news_list_widget.dart';
import 'package:flash/widget/ourButton.dart';
import 'package:flutter/material.dart';

class MusicNewsListScreen extends StatelessWidget {
  const MusicNewsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    print('$w, $h');

    return Scaffold(
      backgroundColor: MyAppColors.mainColor,
      body: NewsListWidget(
        appBarTitleText: 'Music News',
        titleText:
            "The world's higest paid footballers and managers in 2020 have been named-GIVEMESPORT",
        headerImage: 'asset/images/music.jpg',
        sliverDelegate: SliverChildBuilderDelegate(
          ((context, index) {
            return Column(
              children: [
                Material(
                  elevation: 4,
                  child: Container(
                    color: MyAppColors.textWhite,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: h * 0.01),
                      child: Row(
                        children: [
                          // Image: first item in the outer Row
                          Container(
                            margin: EdgeInsets.only(left: h * 0.01),
                            height: h * 0.14,
                            width: w * 0.25,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(data2[index]['photo']),
                              ),
                              borderRadius: BorderRadius.circular(h * 0.02),
                            ),
                          ),
                          // Second Item in our Row. Beside the Image
                          Container(
                            height: h * 0.14,
                            width: w * 0.7,
                            margin: EdgeInsets.only(left: w * 0.015),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  data2[index]['text'],
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                SizedBox(height: h * 0.01),
                                Container(
                                  margin: EdgeInsets.only(left: h * 0.001),
                                  child: Row(
                                    children: [
                                      OurButton(
                                        text: 'Music',
                                        height: h * 0.047,
                                        width: w * 0.35,
                                        radius: h * 0.009,
                                        fontSize: h * 0.016,
                                      ),
                                      SizedBox(
                                        width: h * 0.009,
                                      ),
                                      Text(
                                        '08 February',
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // Giving space between the list items
                SizedBox(height: h * 0.01),
              ],
            );
          }),
          childCount: 6,
        ),
      ),
    );
  }
}
