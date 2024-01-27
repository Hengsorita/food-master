import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:project/Login/password_screen.dart';
import 'package:project/component/my_button.dart';
import 'package:project/main_page/main_screen.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: ClipPath(
            clipper: ParallelogramClipper(),
            child: Container(
              color: Colors.grey.withOpacity(0.2),
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                // icon: Image.asset(
                //   menuIcon,
                //   height: 20,
                // ),
                icon: const Icon(
                  Icons.chevron_left,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "sign in",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 25),

              // Welcome
              Text(
                "Welcome Back",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Login to your account.",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              // email textfiled
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              //Forgot Password??
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => (Get.to(forgotpassword())),
                    child: Text(
                      ' Forgot Password',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 20),
              // Login
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: MyButton(
                    title: "Login",
                    callback: () {
                      Get.to(() => MainScreen());
                    }),
              ),
              SizedBox(height: 10),

              // Don't have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('don/t have an account'),
                  Text(
                    ' Sign up',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
