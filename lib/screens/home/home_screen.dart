import 'package:flash/utility/my_app_color.dart';
import 'package:flutter/material.dart';
import 'package:flash/utility/data.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();

    print('Our Screen ($w,$h)');
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'News Category',
          style: TextStyle(
            color: MyAppColors.mainColor,
          ),
        ),
        elevation: h * 0.002,
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
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: h * 0.01,
          vertical: h * 0.06,
        ),
        child: GridView.count(
          shrinkWrap: true,
          crossAxisCount: 3,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
          childAspectRatio: h / h * 0.5,
          children: List.generate(
            homedata.length,
            (index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: MyAppColors.mainColorLight,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(
                      homedata[index]['photo'],
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  homedata[index]['tittle'],
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: MyAppColors.appWhite,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
