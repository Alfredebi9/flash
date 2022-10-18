import 'package:flash/utility/my_app_color.dart';
import 'package:flutter/material.dart';

class NewsListWidget extends StatelessWidget {
  final String titleText;
  final String appBarTitleText;
  final String headerImage;
  final SliverChildDelegate sliverDelegate;

  const NewsListWidget(
      {Key? key,
      required this.titleText,
      required this.headerImage,
      required this.sliverDelegate,
      required this.appBarTitleText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: h * 0.35,
          backgroundColor: MyAppColors.appWhite,
          centerTitle: true,
          title: Text(
            appBarTitleText,
            style: TextStyle(
                color: MyAppColors.mainColor,
                fontSize: h * 0.03,
                fontWeight: FontWeight.bold),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    headerImage,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: h * 0.01, vertical: h * 0.01),
                    color: Colors.black.withOpacity(0.3),
                    child: Text(
                      titleText,
                      style: TextStyle(
                        fontSize: h * 0.025,
                        fontWeight: FontWeight.w700,
                        color: MyAppColors.appWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverList(
          delegate: sliverDelegate,
        ),
      ],
    );
  }
}
