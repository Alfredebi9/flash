import 'package:flash/utility/my_app_color.dart';
import 'package:flash/widget/switch_icon_widget.dart';
import 'package:flash/widget/text_num_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.03),
          child: Column(
            children: [
              SizedBox(height: h * 0.06),
              Container(
                child: Row(
                  children: [
                    // the image
                    CircleAvatar(
                      foregroundImage: AssetImage('asset/images/sport.jpg'),
                      radius: h * 0.07,
                    ),
                    SizedBox(width: w * 0.05),
                    // the username & email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TheAlphanumeric',
                          style: TextStyle(
                            fontSize: h * 0.03,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: h * 0.018),
                        Container(
                          width: w * 0.5,
                          child: Text(
                            'yourRealemailHere@gmail.com',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: h * 0.019,
                              // fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: w * 0.05, vertical: h * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextNumWidget(number: '826', text: 'Followers'),
                    TextNumWidget(number: '251', text: 'Following'),
                    TextNumWidget(number: '81K', text: 'News Read'),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: h * 0.03),
                child: Column(
                  children: [
                    SwitchIconWidget(
                      icon: Icon(
                        Icons.lightbulb_outline,
                        size: h * 0.035,
                      ),
                      iconText: 'Night',
                    ),
                    SizedBox(
                      height: h * 0.035,
                    ),
                    SwitchIconWidget(
                      icon: Icon(
                        Icons.notifications,
                        size: h * 0.035,
                      ),
                      iconText: 'Notification',
                    ),
                    SizedBox(
                      height: h * 0.035,
                    ),
                    SwitchIconWidget(
                      icon: Icon(
                        Icons.share,
                        size: h * 0.035,
                      ),
                      iconText: 'Social Media',
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.logout_rounded,
                      size: h * 0.03,
                      color: MyAppColors.mainColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: h * 0.02,
                        fontWeight: FontWeight.w700,
                        color: MyAppColors.mainColor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
