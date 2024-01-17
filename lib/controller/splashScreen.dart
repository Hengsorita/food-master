import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Login/login_screen.dart';

class SplashController extends GetxController {
  late Timer? _timer;

  void intiSplashScreen() async {
    AuthController authController = Get.put(AuthController());

    _timer =Timer(
      Duration(seconds: 3),
      () => authController.isLogin()
      
      ? Get.offAll(()=> Loginscreen()),
    );
    @override 
    void onClose() {
      _timer?.cancel();
      super.isClosed();
    }
  }
}
