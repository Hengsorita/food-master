import 'package:flutter/material.dart';

class Detailscreen extends StatelessWidget {
  const Detailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.withOpacity(0.3),
        leading: Icon(Icons.arrow_back_ios),
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
            child: Image.network(
                'https://freepngimg.com/thumb/food/139065-food-plate-fish-free-download-png-hq-thumb.png'),
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
                      'Fried Chicken',
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
                      '4.00',
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
                      '20.00',
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Spacer(),
                    Icon(
                      Icons.shopping_cart,
                      size: 50,
                      color: Colors.red,
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
