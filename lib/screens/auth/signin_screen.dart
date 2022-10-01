import 'package:flash/utility/my_app_color.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header with flash image
            Container(
              alignment: Alignment.center,
              height: h * 0.4,
              width: double.infinity,
              decoration: BoxDecoration(
                color: MyAppColors.mainColorLight,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    h * 0.15,
                  ),
                ),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    MyAppColors.mainColor,
                    MyAppColors.mainColorLight,
                  ],
                ),
              ),
              child: Image.asset(
                'asset/images/flash.png',
                height: h * 0.15,
                // color: MyAppColors.mainColor,
              ),
            ),
            SizedBox(
              height: h * 0.05,
            ),
            // Input Fields
            Container(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(h * 0.05),
                      elevation: 2,
                      child: TextField(
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_sharp,
                            color: MyAppColors.mainColor,
                          ),
                          hintText: 'Email',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.04,
                  ),
                  // Password
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Material(
                      borderRadius: BorderRadius.circular(h * 0.05),
                      elevation: 2.0,
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_sharp,
                            color: MyAppColors.mainColor,
                          ),
                          hintText: 'Password',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(h * 0.009),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  // Login Button
                  Container(
                    height: h * 0.08,
                    width: w - 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(h * 0.05),
                      gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          MyAppColors.mainColorLight,
                          MyAppColors.mainColor,
                        ],
                      ),
                    ),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: MyAppColors.textWhite,
                        fontSize: h * 0.03,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
