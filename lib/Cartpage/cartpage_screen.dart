import 'package:flutter/material.dart';

class cartscreen extends StatefulWidget {
  const cartscreen({super.key});

  @override
  State<cartscreen> createState() => _cartscreenState();
}

class _cartscreenState extends State<cartscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios),
          centerTitle: true,
          title: Text(
            'My favourities',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          )),
      body: SafeArea(
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
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
              ))),
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
        )
      ],
    );
  }
}
