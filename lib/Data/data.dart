import 'package:flutter/material.dart';
import 'package:project/Cartpage/cartpage_screen.dart';

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
                    title: 'Frtied Chicken',
                    subtitle: 'Golden brown fried chicken',
                    subtitle2: '20',
                    icon: Icons.abc,
                    color: Colors.grey,
                    bottomText: '20',
                    bottomText2: '+1000',
                  ),
                  SizedBox(height: 20),
                  cartReusable(
                    title: 'Frtied Chicken',
                    subtitle: 'Golden brown fried chicken',
                    subtitle2: '20',
                    icon: Icons.abc,
                    color: Colors.grey,
                    bottomText: '20',
                    bottomText2: '+1000',
                  ),
                  SizedBox(height: 20),
                  cartReusable(
                    title: 'Frtied Chicken',
                    subtitle: 'Golden brown fried chicken',
                    subtitle2: '20',
                    icon: Icons.abc,
                    color: Colors.grey,
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
            color: Colors.grey,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                'https://howtostartanllc.com/images/business-ideas/business-idea-images/fast-food.jpg',
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  Text(
                    'String title',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'String subtitle',
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.money_outlined),
                      Text(
                        'String subtitle2',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
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
