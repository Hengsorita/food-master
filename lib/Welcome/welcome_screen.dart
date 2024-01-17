import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Login/login_screen.dart';
import 'package:project/Register/register_screen.dart';
import 'package:project/component/app_text.dart';
import 'package:project/component/my_button.dart';

import '../constant.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: Get.height / 1.8,
            child: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    AppAsset.loginBg,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),

          // Welcome
          Expanded(
            child: Scaffold(
              body: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Welcome !",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    AppText(
                      text:
                          "Lorem ipsum dolor sit amet,consect- etu adipiscing elit.",
                      fontSize: 16,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30),
                    // Login
                    MyButton(
                        title: "Login",
                        callback: () {
                          Get.to(Loginscreen());
                        }),
                    SizedBox(height: 10),
                    //Sign in
                    MyButton(
                        title: "Sign Up",
                        callback: () {
                          Get.to(Registerscreen());
                        }),
                    SizedBox(height: 10),
                    // not a member
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(text: 'Not a member'),
                        AppText(
                          text: ' Register now',
                          color: Colors.blue,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
