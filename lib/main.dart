import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Homepage/homepage_screen.dart';
import 'package:project/Login/password_screen.dart';
import 'package:project/Product/product_screen.dart';
import 'package:project/Splash/splash_screen.dart';
import 'package:project/controller_binding.dart';

import 'package:project/notification.dart/notification_screen.dart';
import 'package:project/payment.dart/order_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyappState();
}

class _MyappState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      initialBinding: ControllerBinding(),
    );
  }
}
