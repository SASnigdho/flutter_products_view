import 'dart:developer';

import 'package:get/get.dart';

import '../data/provider/interfaces/i_product_repository.dart';
import 'base_controller.dart';

class ProductController extends BaseController {
  ProductController(this.repository);

  final IProductRepository repository;
  final isLoading = false.obs;
  final products = [].obs;

  @override
  Future<void> onReady() async {
    await fetchProducts();
    super.onReady();
  }

  Future<void> fetchProducts() async {
    isLoading.value = true;

    try {
      final res = await repository.allProducts();

      if (res.isNotEmpty) {
        products.addAll(res);
      }

      isLoading.value = false;
    } catch (e) {
      log('HomeController:: fetchProducts@ $e');
      isLoading.value = false;
    }
  }
}
