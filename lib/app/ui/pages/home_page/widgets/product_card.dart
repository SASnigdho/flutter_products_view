import 'package:flutter/material.dart';
import 'package:flutter_products_view/app/controllers/cart_controller.dart';
import 'package:flutter_products_view/app/data/models/cart/cart.dart';
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
                  onPressed: () async {
                    final cartCtrl = Get.find<CartController>();

                    final cart = Cart();
                    cart.id = _product.id;
                    cart.name = _product.title;
                    cart.category = _product.category;
                    cart.image = _product.image;
                    cart.price = _product.price?.toInt();
                    cart.quantity = 1;

                    await cartCtrl.addToCart(cart);

                    Get.snackbar(
                      'Add to Cart',
                      'Product added to cart successfully.',
                      backgroundColor: AppColors.lightBg,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: AppColors.primary,
                  ),
                  child: const Text('Add to Cart'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
