import 'package:awesome_card/awesome_card.dart';
import 'package:flutter/material.dart';
import 'package:awesome_card/credit_card.dart';
import 'package:get/get.dart';

class creditscreen extends StatelessWidget {
  const creditscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.back();
            },
          ),
          centerTitle: true,
          title: Text('Select Card'),
        ),
        bottomNavigationBar: Container(
          width: 50,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Colors.red,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Done',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            MyCreditWidget(),
            SizedBox(height: 20),
            MyCreditWidget(),
          ],
        ));
  }
}

class MyCreditWidget extends StatefulWidget {
  const MyCreditWidget({super.key});

  @override
  State<MyCreditWidget> createState() => _MyCreditWidgetState();
}

class _MyCreditWidgetState extends State<MyCreditWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CreditCard(
            cardNumber: '3234 4556 7889',
            cardExpiry: '05/26',
            cardHolderName: 'card holder',
            bankName: 'BANK',
            cardType: CardType.masterCard,
            frontBackground: CardBackgrounds.black,
            backBackground: CardBackgrounds.white,
            showShadow: true,
            textName: 'Name',
            textExpiry: 'MM/DD/YY',
          )
        ],
      ),
    );
  }
}
