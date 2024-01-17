import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/payment.dart/payment.dart';

class Addcart extends StatelessWidget {
  const Addcart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          centerTitle: true,
          title: Text(
            'My Cart',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
      bottomNavigationBar: Container(
        height: Get.height * 0.2,
        margin: EdgeInsets.all(Get.width * 0.03),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Get.width * 0.06),
            color: Colors.grey[100],
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                spreadRadius: Get.width * 0.01,
                blurRadius: Get.width * 0.01,
                offset: Offset(0, Get.width * 0.005),
              )
            ]),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: Get.height / 40,
            horizontal: Get.width * 0.08,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Delivery Time',
                    style: TextStyle(
                        fontSize: Get.width * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.access_time,
                        color: Colors.red,
                      ),
                      SizedBox(width: Get.width / 80),
                      Text(
                        '25 mins',
                        style: TextStyle(
                          fontSize: Get.width * 0.04,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: Get.height * 0.02,
              ),
              Text(
                'Total Price',
                style: TextStyle(
                  fontSize: Get.width * 0.03,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: Get.height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: '\$',
                        style: TextStyle(
                          fontSize: Get.width * 0.04,
                          color: Colors.red,
                        ),
                      ),
                      TextSpan(
                          text: '20.00',
                          style: TextStyle(
                            fontSize: Get.width * 0.07,
                            color: Colors.black,
                          ))
                    ]),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => payment(),
                      );
                    },
                    child: SizedBox(
                      child: Container(
                        width: Get.width * 0.4,
                        height: Get.height * 0.06,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(
                            Get.width * 0.03,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'Place Order',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: Get.width * 0.04,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: ListView(
            children: [
              cartReusable(
                title: 'Fried Chicken',
                subtitle: 'Golden brown fried chick',
                subtitle2: '20',
                icon: Icons.attach_money,
                color: Colors.black,
                bottomText: '20',
                bottomText2: '+1000',
              ),
              SizedBox(height: 20),
              cartReusable(
                title: 'Chicken',
                subtitle: 'Golden brown fried chicken',
                subtitle2: '20',
                icon: Icons.attach_money,
                color: Colors.black,
                bottomText: '20',
                bottomText2: '+1000',
              ),
              SizedBox(height: 20),
              cartReusable(
                title: 'Egg Pasta',
                subtitle: 'Golden brown fried chicken',
                subtitle2: '20',
                icon: Icons.attach_money,
                color: Colors.black,
                bottomText: '20',
                bottomText2: '+1000',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class cartReusable extends StatelessWidget {
  cartReusable({
    required this.title,
    required this.subtitle,
    required this.subtitle2,
    required this.icon,
    required this.color,
    this.bottomText = '',
    this.bottomText2 = '',
  });
  final String title;
  final String subtitle;
  final String subtitle2;
  final IconData icon;
  final Color color;
  String bottomText = '';
  String bottomText2 = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://img.freepik.com/free-photo/tasty-burger-isolated-white-background-fresh-hamburger-fastfood-with-beef-cheese_90220-1063.jpg?size=338&ext=jpg&ga=GA1.1.1546980028.1704240000&semt=sph',
                height: 120,
                width: 100,
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$title',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: color),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '$subtitle',
                    style: TextStyle(fontSize: 12, color: color),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(
                        icon,
                        color: Colors.red,
                      ),
                      Text(
                        '$subtitle2',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
