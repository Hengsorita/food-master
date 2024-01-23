import 'package:get/get.dart';
import 'package:project/model/food_model.dart';

class Favouritiescontroller extends GetxController {
  List<FoodModel> cartlist = [];

  void Favour(FoodModel foodModel) {
    cartlist.add(foodModel);
    update();
  }
}
