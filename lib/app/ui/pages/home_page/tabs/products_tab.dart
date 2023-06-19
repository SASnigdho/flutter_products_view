import 'package:flutter/material.dart';
import 'package:flutter_products_view/app/const/app_colors.dart';
import 'package:flutter_products_view/app/controllers/product_controller.dart';
import 'package:get/get.dart';

import '../widgets/product_list_item.dart';

class ProductsTab extends GetView<ProductController> {
  const ProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return const ProductListItem();
      },
      separatorBuilder: (context, index) => const SizedBox(),
      itemCount: 100,
      padding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}
