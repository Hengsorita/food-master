import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:project/payment.dart/recieved_screen.dart';

class order extends StatelessWidget {
  const order({super.key});

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
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.network(
                'https://www.seekpng.com/png/detail/114-1145495_delivery-png-transparent-delivery-png.png'),
            SizedBox(
              height: 5,
            ),
            Text(
              'Your food is on the way.',
              style: TextStyle(
                color: Colors.red,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: Text(
                "Thank you for your order!you can track the delivery in order section.",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black45,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 80),
            InkWell(
              onTap: () {
                Get.to(Recieved());
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Track My Order',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
