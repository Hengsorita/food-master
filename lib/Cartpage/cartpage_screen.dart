import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:project/Cartpage/favourities_controller.dart';
import 'package:project/model/food_model.dart';

class cartscreen extends StatefulWidget {
  cartscreen({super.key});

  Favouritiescontroller controller = Get.find();

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
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
            'My favourities',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
            child: GetBuilder<Favouritiescontroller>(builder: (controller) {
              return ListView.builder(
                  itemCount: controller.cartlist.length,
                  itemBuilder: (context, index) {
                    final FoodModel foodModel = controller.cartlist[index];
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
                Row(
                  children: [
                    Text(
                      foodModel.price.toString(),
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 70,
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
