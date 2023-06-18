import 'dart:developer';

import 'interfaces/i_product_repository.dart';
import 'repository.dart';

class ProductRepository extends Repository implements IProductRepository {
  @override
  Future<List<dynamic>> allProducts() async {
    final List<dynamic> products = [];

    try {
      // products

      final res = await apiClient.get(url: 'products');

      log('$res');
      return products;
    } catch (e) {
      log('ProductRepository:: allProducts@ $e');
      return products;
    }
  }
}
