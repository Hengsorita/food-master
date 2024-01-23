import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/Homepage/homepage_screen.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.to(HomeScreen()),
            icon: Icon(Icons.arrow_back)),
        centerTitle: true,
        title: Text(
          'Notification',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(children: [
        Container(
          height: 600,
          decoration: BoxDecoration(
            //  color: Colors.grey[100],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 360,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 5),
                          Text(
                            'Lorem lpsum',
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.chevron_right_outlined),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                        height: 50,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white,
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              'Lorem lpsum ',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
