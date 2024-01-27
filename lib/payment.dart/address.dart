import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:project/component/my_button.dart';
import 'package:project/payment.dart/payment.dart';
import 'package:project/payment.dart/payment_method.dart';

class address extends StatelessWidget {
  const address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
          'Choose Address',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(children: [
        Container(
          height: 600,
          decoration: BoxDecoration(
            //  color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 120,
                            width: 360,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Text(
                                      'Choose ',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      icon: Icon(Icons.chevron_right_outlined),
                                      onPressed: () {
                                        Get.to(method());
                                      },
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                          color: Colors.blueGrey, fontSize: 18),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Home',
                                        ),
                                        TextSpan(
                                            text:
                                                '(503) 338-5200 15612 Fisher lslandDr '),
                                        TextSpan(
                                          text: 'Miami Beach , Florida,33109',
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.back();
                          },
                          child: Container(
                            height: 120,
                            width: 360,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: 10),
                                    Text(
                                      'Payment Method ',
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 16),
                                    ),
                                    Spacer(),
                                    IconButton(
                                      icon: Icon(Icons.chevron_right_outlined),
                                      onPressed: () {
                                        Get.to(method());
                                      },
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                          color: Colors.blueGrey, fontSize: 18),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'Office ',
                                        ),
                                        TextSpan(
                                            text:
                                                '(503) 338-5200 15612 Fisher lslandDr '),
                                        TextSpan(
                                          text: 'Miami Beach , Florida,33109',
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Get.width * 0.4,
                    child: MyButton(
                      title: 'Done',
                      callback: () {
                        Get.to(payment());
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
