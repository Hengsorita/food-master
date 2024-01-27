import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:project/component/my_button.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  Container _buildRowContent(String title) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.grey[200]),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 17,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

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
          'My Profile',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 160,
              child: Stack(
                children: [
                  Container(
                    height: 170,
                    width: 400,
                    child: Image.network(
                      'https://i.ytimg.com/vi/3WT0qzvoMyo/maxresdefault.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Image.network(
                      'https://storage.ko-fi.com/cdn/useruploads/display/271a4e0e-9d60-4b63-837f-c4c9d79d3824_sage.jpg',
                      height: 120,
                      width: 120,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Julia Edwards',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              'juliaedwards@gmail.com',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            Text(
              '+1234567890',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 50),
              child: MyButton(title: "Edit Profile", callback: () {}),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildRowContent("My Order"),
                  _buildRowContent("My Address"),
                  _buildRowContent("My favorite"),
                  _buildRowContent("Coupons"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
