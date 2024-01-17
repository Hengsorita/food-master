import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/payment.dart/payment.dart';

class paymentscreen extends StatelessWidget {
  const paymentscreen({super.key});
  Container _buildRowContent(String title) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[100]),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 17,
          color: Colors.black,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
        title: Text(
          'Payment Method',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: ListView(
          children: [
            _buildRowContent('Credit, debit Cart'),
            _buildRowContent('Card'),
            _buildRowContent('Cash on Delivery'),
            InkWell(
              onTap: () {},
              child: Container(
                //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
