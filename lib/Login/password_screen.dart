import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:project/Login/new_password.dart';
import 'package:project/Login/verification.dart';

class forgotpassword extends StatelessWidget {
  const forgotpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: ClipPath(
            clipper: ParallelogramClipper(),
            child: Container(
              color: Colors.white,
              child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.chevron_left,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 28,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "Enter your register email or phone",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black45,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 80),
                  Container(
                    width: 320,
                    // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Email or phone',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.blueGrey,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: ClipPath(
                      clipper: ParallelogramClipper(),
                      child: Container(
                        color: Colors.red,
                        child: IconButton(
                          onPressed: () {
                            Get.to(verification());
                          },
                          icon: const Icon(
                            Icons.arrow_forward,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
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
