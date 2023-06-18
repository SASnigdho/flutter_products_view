import 'dart:developer';

import '../data/provider/product_repository.dart';
import 'base_controller.dart';

class ProductController extends BaseController {
  @override
  Future<void> onReady() async {
    await fetchProducts();
    super.onReady();
  }

  Future<void> fetchProducts() async {
    try {
      final repo = ProductRepository();
      final res = await repo.allProducts();

      log('$res');
    } catch (e) {
      log('HomeController:: fetchProducts@ $e');
    }
  }
}
