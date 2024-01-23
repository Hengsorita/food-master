import 'package:get/get.dart';
import 'package:project/Cartpage/add_to_cart_controller.dart';
import 'package:project/Cartpage/favourities_controller.dart';
import 'package:project/model/food_model.dart';

class ProductDetailController extends GetxController {
  void addToCart(FoodModel foodModel) {
    Get.find<AddToCartController>().addToCart(foodModel);
    Get.snackbar("Add to Cart", "Add to cart successfully");
  }

  void addToFav(FoodModel foodModel) {
    Get.find<Favouritiescontroller>().Favour(foodModel);
    Get.snackbar("Add to fav", "Add to fav successfully");
  }
}
