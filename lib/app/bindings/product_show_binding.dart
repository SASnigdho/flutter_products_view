import 'package:get/get.dart';
import '../controllers/product_show_controller.dart';

class ProductShowBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductShowController>(() => ProductShowController());
  }
}
