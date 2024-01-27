import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:project/Data/newdata.dart';
import 'package:project/Product/product_detail_controller.dart';
import 'package:project/model/food_model.dart';

class Detailscreen extends StatefulWidget {
  Detailscreen({super.key, required this.food});

  final FoodRepo food;

  @override
  State<Detailscreen> createState() => _DetailscreenState();
}

class _DetailscreenState extends State<Detailscreen> {
  final ProductDetailController _controller =
      Get.put(ProductDetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: 70,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: ClipPath(
            clipper: ParallelogramClipper(),
            child: Container(
              color: Colors.grey.withOpacity(0.3),
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
                    onPressed: () =>
                        _controller.addToFav(widget.food as FoodModel),
                    icon: Icon(Icons.favorite),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
                child: Image.asset(widget.food.image),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Botton -
                  Center(
                    child: Container(
                      transform: Matrix4.rotationZ(45 * 3.1415927 / 180),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 0, 0),
                        borderRadius: BorderRadius.circular(Get.width * 0.03),
                      ),
                      transformAlignment: Alignment.center,
                      child: Transform.rotate(
                        angle: 5.5,
                        child: IconButton(
                            onPressed: () {
                              _controller.update();
                              setState(() {
                                if (widget.food.qty > 0) {
                                  widget.food.qty--;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  ),
                  // Number count
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                      child: Text(
                    "${widget.food.qty}",
                    style: TextStyle(fontSize: 25),
                  )),
                  // Bottpn +
                  SizedBox(
                    width: 15,
                  ),
                  Center(
                    child: Container(
                      transform: Matrix4.rotationZ(45 * 3.1415927 / 180),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 243, 0, 0),
                        borderRadius: BorderRadius.circular(Get.width * 0.03),
                      ),
                      transformAlignment: Alignment.center,
                      child: Transform.rotate(
                        angle: 5.5,
                        child: IconButton(
                            onPressed: () {
                              // _controller.increQty();
                              // _controller.update();
                              setState(() {
                                widget.food.qty++;
                              });
                            },
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          widget.food.subtitle,
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
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow[800],
                        ),
                        Text(
                          // widget.foodModel.rate.toString(),
                          '5',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(widget.food.detail),
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
                          widget.food.price.toString(),
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            // _controller.addToCart(widget.food);
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
          ),
        ],
      )),
    );
  }
}
