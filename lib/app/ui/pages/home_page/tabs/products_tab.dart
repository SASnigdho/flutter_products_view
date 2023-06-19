import 'package:flutter/material.dart';
import 'package:flutter_products_view/app/const/app_colors.dart';
import 'package:flutter_products_view/app/controllers/product_controller.dart';
import 'package:get/get.dart';

import '../widgets/product_list_item.dart';

class ProductsTab extends GetView<ProductController> {
  const ProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isLoading.value
          ? const Center(
              child: CircularProgressIndicator(color: AppColors.primary),
            )
          : ListView.separated(
              itemBuilder: (context, i) {
                final product = controller.products[i];
                return ProductListItem(product);
              },
              separatorBuilder: (context, i) => const SizedBox(),
              itemCount: controller.products.length,
              padding: const EdgeInsets.symmetric(horizontal: 16),
            ),
    );
  }
}
