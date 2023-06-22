import 'dart:developer';

import 'package:get/get.dart';

import '../data/models/product/product.dart';
import '../data/provider/interfaces/i_product_repository.dart';
import 'base_controller.dart';

class ProductController extends BaseController {
  ProductController(this.repository);

  final IProductRepository repository;
  final isLoading = false.obs;
  final products = <Product>[].obs;
  final backUpProducts = <Product>[].obs;

  @override
  Future<void> onReady() async {
    await fetchProducts();
    super.onReady();
  }

  Future<void> fetchProducts() async {
    products.clear();
    backUpProducts.clear();
    isLoading.value = true;

    try {
      final res = await repository.allProducts();

      if (res.isNotEmpty) {
        products.addAll(res);
        backUpProducts.addAll(res);
      }

      isLoading.value = false;
    } catch (e) {
      log('HomeController:: fetchProducts@ $e');
      isLoading.value = false;
    }
  }

  Future<void> onSearch(String keyword) async {
    products.clear();
    products.addAll(backUpProducts);

    try {
      final filteredProducts = products.where((product) {
        final String title = product.title!.toLowerCase();

        return title.contains(keyword.toLowerCase());
      }).toList();

      products.clear();
      products.addAll(filteredProducts);
      products.refresh();

      if (keyword.isEmpty) await fetchProducts();
    } catch (e) {
      isLoading.value = false;
      log('HomeController:: onSearch@ $e');
    }
  }
}
