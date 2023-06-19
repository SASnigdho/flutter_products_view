import 'dart:developer';

import 'package:flutter_products_view/app/data/models/product/product.dart';

import 'interfaces/i_product_repository.dart';
import 'repository.dart';

class ProductRepository extends Repository implements IProductRepository {
  @override
  Future<List<Product>> allProducts() async {
    final List<Product> products = [];

    try {
      final res = await apiClient.get(url: 'products');

      final data = res.data as List;
      for (var item in data) {
        final product = Product.fromJson(item);
        products.add(product);
      }

      log('ProductRepository:: allProducts@ ${products.length}');
      return products;
    } catch (e) {
      log('ProductRepository:: allProducts@ $e');
      return products;
    }
  }
}
