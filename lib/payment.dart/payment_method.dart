import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/payment.dart/card_screen.dart';

class method extends StatelessWidget {
  const method({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
              onPressed: () => Get.back(), icon: Icon(Icons.arrow_back)),
          centerTitle: true,
          title: Text(
            'Payment Method',
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
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 5),
                            Text(
                              'credit ,debit Card',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(Icons.chevron_right_outlined),
                              onPressed: () {
                                // Get.to(creditscreen());
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 5),
                            Text(
                              'Paypal',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 5),
                            Text(
                              'Cash on Delivery',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 50),
                InkWell(
                  onTap: () {
                    Get.to(CardPage());
                  },
                  child: Container(
                    height: 50,
                    width: 360,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.red,
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 5),
                          Text('Next',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              )),
                        ]),
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
