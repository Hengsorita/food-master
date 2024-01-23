import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Cartpage/add_to_cart_controller.dart';
import 'package:project/model/food_model.dart';
import 'package:project/payment.dart/payment.dart';

class Addcart extends StatelessWidget {
  Addcart({super.key});

  AddToCartController controller = Get.find();

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
            child: GetBuilder<AddToCartController>(builder: (controller) {
              return ListView.builder(
                  itemCount: controller.cartList.length,
                  itemBuilder: (context, index) {
                    final FoodModel foodModel = controller.cartList[index];
                    return cartReusable(foodModel: foodModel);
                  });
            })),
      ),
    );
  }
}

class cartReusable extends StatelessWidget {
  cartReusable({required this.foodModel});
  final FoodModel foodModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      elevation: 5,
      surfaceTintColor: Colors.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.grey, width: 0.5),
          borderRadius: BorderRadius.circular(30)),
      child: Container(
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.all(8),
        height: 140,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              foodModel.img,
              height: double.infinity,
              width: 100,
              fit: BoxFit.cover,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  foodModel.title,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black),
                ),
                SizedBox(height: 5),
                Text(
                  foodModel.desc,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),
                SizedBox(height: 5),
                Text(
                  foodModel.price.toString(),
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
