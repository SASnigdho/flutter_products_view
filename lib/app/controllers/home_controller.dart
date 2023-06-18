import 'dart:developer';

import 'package:get/get.dart';

import '../data/provider/product_repository.dart';
import 'base_controller.dart';

class HomeController extends BaseController {
  final index = 0.obs;

  @override
  void onReady() {
    fetchProducts();
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
