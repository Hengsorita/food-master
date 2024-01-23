import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Welcome/welcome_screen.dart';
import 'package:project/controller/splash_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashController _controller = Get.find();

  @override
  void initState() {
    _controller.intiSplashScreen();
    super.initState();
  }

  @override
  void dispose() {
    _controller.closeTimer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.red[400],
      ),
      child: Image.network(
        'https://img.freepik.com/free-vector/cute-burger-chef-thumbs-up-cartoon-icon-illustration-food-chef-icon-isolated-flat-cartoon-style_138676-3109.jpg?size=338&ext=jpg&ga=GA1.1.1803636316.1701475200&semt=ais',
      ),
    );
  }
}
