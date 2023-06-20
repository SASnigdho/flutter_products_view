import 'package:flutter_products_view/app/data/provider/cart_repository.dart';
import 'package:flutter_products_view/app/data/provider/product_repository.dart';
import 'package:get/get.dart';
import '../controllers/cart_controller.dart';
import '../controllers/home_controller.dart';
import '../controllers/product_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ProductController>(
      () => ProductController(ProductRepository()),
    );

    Get.put<CartController>(CartController(CartRepository()), permanent: true);
  }
}
