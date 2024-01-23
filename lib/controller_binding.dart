import 'package:get/get.dart';
import 'package:project/Cartpage/add_to_cart_controller.dart';
import 'package:project/Cartpage/favourities_controller.dart';
import 'package:project/Product/product_detail_controller.dart';
import 'package:project/controller/auth_controller.dart';
import 'package:project/controller/splash_controller.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AuthController());
    Get.put(SplashController());

    Get.put(AddToCartController());
    Get.put(ProductDetailController());
    Get.put(Favouritiescontroller());
  }
}
