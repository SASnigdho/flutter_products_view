import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../const/app_colors.dart';
import '../../../../data/models/product/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(this._product, {super.key});

  final Product _product;

  @override
  Widget build(BuildContext context) {
    final titleTs =
        Get.textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold);

    return Card(
      elevation: 8,
      color: AppColors.lightBg,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${_product.title}', style: titleTs),
            Text('${_product.rating?.rate}'),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${_product.price}', style: titleTs),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.primary,
                  ),
                  child: const Text('Cart'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
