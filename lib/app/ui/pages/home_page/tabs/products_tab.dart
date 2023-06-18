import 'package:flutter/material.dart';
import 'package:flutter_products_view/app/controllers/product_controller.dart';
import 'package:get/get.dart';

class ProductsTab extends GetView<ProductController> {
  const ProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('ProductsTab'),
    );
  }
}
