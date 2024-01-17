import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/payment.dart/order_screen.dart';
import 'package:project/payment.dart/payment.dart';
import 'package:project/payment.dart/payment_method1.dart';

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
      home: order(),
    );
  }
}
