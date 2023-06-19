import 'package:flutter_products_view/app/data/models/product/product.dart';

abstract class IProductRepository {
  Future<List<Product>> allProducts();
}
