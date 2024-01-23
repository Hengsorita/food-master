import 'package:get/get.dart';
import 'package:project/model/food_model.dart';

class AddToCartController extends GetxController {
  List<FoodModel> cartList = [];

  void addToCart(FoodModel foodModel) {
    cartList.add(foodModel);
    update();
  }
}
