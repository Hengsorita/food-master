import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:project/Cartpage/add_cart.dart';
import 'package:project/Cartpage/cartpage_screen.dart';
import 'package:project/Product/product_detail_controller.dart';
import 'package:project/model/food_model.dart';

class Detailscreen extends StatelessWidget {
  Detailscreen({super.key, required this.foodModel});

  final FoodModel foodModel;

  ProductDetailController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.3),
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
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: InkWell(
              onTap: () {},
              child: ClipPath(
                clipper: ParallelogramClipper(),
                child: SizedBox(
                  height: 55,
                  width: 55,
                  child: IconButton(
                    onPressed: () => controller.addToFav(foodModel),
                    icon: Icon(Icons.favorite),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Image.network(foodModel.img),
          ),
          Container(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      foodModel.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    Text(
                      foodModel.rate.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      'Delivery Time',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.timelapse,
                      size: 20,
                      color: Colors.red,
                    ),
                    Text(
                      '25 mn',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                Row(
                  children: [
                    Text(
                      'Total Price',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.attach_money,
                      size: 20,
                      color: Colors.red,
                    ),
                    Text(
                      foodModel.price.toString(),
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        controller.addToCart(foodModel);
                      },
                      child: Icon(
                        Icons.shopping_cart,
                        size: 50,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
