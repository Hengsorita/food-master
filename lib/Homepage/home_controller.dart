import 'package:get/get.dart';
import 'package:project/Data/newdata.dart';
import 'package:project/model/food_model.dart';

class HomeController extends GetxController {
  List<FoodRepo> foodList = [];

  void getFoods() {
    foodList = FoodRepo.foodrepo;
    update();
  }

  void filterByCatgory(String category) {
    final cateList =
        foodList.where((element) => element.category == category).toList();
    foodList = cateList;
    update();
  }
}
