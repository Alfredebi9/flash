import 'package:flash/utility/my_app_color.dart';
import 'package:flutter/material.dart';
import 'package:flash/utility/data.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();

    print('our screen($w,$h)');
    return Scaffold(
      backgroundColor: MyAppColors.appWhite,
      appBar: AppBar(
        title: const Text(
          'News Category',
          style: TextStyle(
            color: MyAppColors.mainColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: h * 0.001,
        backgroundColor: MyAppColors.appWhite,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: MyAppColors.mainGreyColor,
              // size: h * 1,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: h * 0.01,
            vertical: h * 0.08,
          ),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 3,
            physics: NeverScrollableScrollPhysics(),
            crossAxisSpacing: h * 0.006,
            mainAxisSpacing: h * 0.0075,
            childAspectRatio: h / h * 0.6,
            children: List.generate(
              homedata.length,
              (index) {
                return Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    // color: MyAppColors.mainColorLight,
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        homedata[index]['photo'],
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Text(
                    homedata[index]['title'],
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 253, 7, 7),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
