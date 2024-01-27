import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:project/Cartpage/add_to_cart_controller.dart';
import 'package:project/Cartpage/favourities_controller.dart';
import 'package:project/component/my_button.dart';
import 'package:project/model/food_model.dart';
//import 'package:project/payment.dart/payment.dart';

import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:project/payment.dart/payment.dart';

class Addcart extends StatelessWidget {
  Addcart({super.key});

  AddToCartController controller = Get.find();

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
            'My Cart',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
      bottomNavigationBar: Container(
        height: Get.height * 0.2,
        margin: EdgeInsets.all(Get.width * 0.03),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Get.width * 0.06),
            color: Colors.white,
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
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
                height: 10,
              ),
              Text(
                'Total Price',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Obx(() => Text(controller.totalAmount.toString(),
                      style: TextStyle(
                          fontSize: 26,
                          color: Colors.red,
                          fontWeight: FontWeight.bold))),
                  SizedBox(
                    width: Get.width * 0.4,
                    child: MyButton(
                      title: 'Place Order',
                      callback: () {
                        Get.to(payment());
                      },
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
            child: GetBuilder<Favouritiescontroller>(builder: (controller) {
              return ListView.builder(
                  itemCount: controller.cartlist.length,
                  itemBuilder: (context, index) {
                    final FoodModel foodModel = controller.cartlist[index];
                    return Slidable(
                        endActionPane: ActionPane(
                          motion: ScrollMotion(),
                          children: [
                            SlidableAction(
                              // An action can be bigger than the others.
                              flex: 2,
                              onPressed: (context) {},
                              backgroundColor: Color(0xFF7BC043),
                              foregroundColor: Colors.white,
                              icon: Icons.archive,
                              label: 'Archive',
                            ),
                            SlidableAction(
                              onPressed: (ctx) {},
                              backgroundColor: Color(0xFF0392CF),
                              foregroundColor: Colors.white,
                              icon: Icons.save,
                              label: 'Save',
                            ),
                          ],
                        ),
                        child: cartReusable(foodModel: foodModel));
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
                Row(
                  children: [
                    Text(
                      foodModel.desc,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    SizedBox(
                      width: 130,
                    ),
                    Text(
                      'x1',
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      foodModel.price.toString(),
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[600],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
