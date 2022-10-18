import 'package:flash/widget/ourButton.dart';
import 'package:flutter/material.dart';
import 'package:flash/utility/my_app_color.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.05,
                  child: ShaderMask(
                    child: Image(
                      image: AssetImage(
                        'asset/images/flash.png',
                      ),
                    ),
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          MyAppColors.mainColor,
                          MyAppColors.mainColorLight,
                        ],
                      ).createShader(bounds);
                    },
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: h * 0.09),
              child: Column(
                children: [
                  ShaderMask(
                    child: Image.asset(
                      'asset/images/flash.png',
                      width: w * 0.29,
                    ),
                    shaderCallback: (Rect bounds) {
                      return LinearGradient(
                        colors: [
                          MyAppColors.mainColorLight,
                          MyAppColors.mainColor,
                        ],
                      ).createShader(bounds);
                    },
                  ),
                  SizedBox(
                    height: h * 0.07,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: h * 0.03,
                    ),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(h * 0.05),
                      shadowColor: Colors.black,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: MyAppColors.mainColor,
                          ),
                          hintText: 'Email',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(h * 0.02),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: h * 0.03),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(h * 0.05),
                      shadowColor: Colors.black,
                      child: TextField(
                        autocorrect: true,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: MyAppColors.mainColor,
                          ),
                          hintText: 'Username',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(h * 0.02),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: h * 0.03),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(h * 0.05),
                      shadowColor: Colors.black,
                      child: TextField(
                        obscureText: true,
                        autocorrect: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: MyAppColors.mainColor,
                          ),
                          hintText: 'Password',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(h * 0.02),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: h * 0.03),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(h * 0.05),
                      shadowColor: Colors.black,
                      child: TextField(
                        obscureText: true,
                        autocorrect: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: MyAppColors.mainColor,
                          ),
                          hintText: 'Confirm Password',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.all(h * 0.02),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.06,
                  ),
                  // BUTTON
                  OurButton(
                    text: 'Sign Up',
                    height: h * 0.08,
                    width: w * 0.7,
                    radius: h * 0.05,
                    fontSize: h * 0.03,
                    iWantGradient: true,
                  ),
                  SizedBox(
                    height: h * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an Account?",
                        style: TextStyle(fontSize: 16),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: MyAppColors.mainColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      )
                    ],
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
