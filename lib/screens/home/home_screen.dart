import 'package:flash/utility/my_app_color.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News Category',
          style: TextStyle(
            color: MyAppColors.mainColor,
          ),
        ),
        elevation: 0.5,
        backgroundColor: MyAppColors.appWhite,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: MyAppColors.mainGreyColor,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/tech.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Text(
              'Tech',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: MyAppColors.textWhite,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
