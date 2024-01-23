import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Login/login_screen.dart';
import 'package:project/Welcome/welcome_screen.dart';

import 'auth_controller.dart';

class SplashController extends GetxController {
  late Timer? _timer;

  void intiSplashScreen() async {
    AuthController authController = Get.find();

    _timer = Timer(
        Duration(seconds: 3),
        () => authController.isLogin()
            ? Get.offAll(() => Loginscreen())
            : Get.offAll(WelcomeScreen()));
  }

  void closeTimer() {
    _timer?.cancel();
  }
}
