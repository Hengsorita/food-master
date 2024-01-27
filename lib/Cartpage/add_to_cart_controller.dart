import 'package:get/get.dart';
import 'package:project/model/food_model.dart';

class AddToCartController extends GetxController {
  List<FoodModel> cartList = [];

  var totalAmount = 0.0.obs;

  void addToCart(FoodModel foodModel) {
    cartList.add(foodModel);
    totalAmount.value += foodModel.price;
    update();
  }
}
