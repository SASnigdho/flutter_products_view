import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../const/app_colors.dart';
import '../../../../data/models/cart/cart.dart';

class CartItem extends StatelessWidget {
  const CartItem(this.cart, {super.key});

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    final titleTs = Get.textTheme.headlineSmall;
    final labelSmallTs = Get.textTheme.labelSmall;

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              height: 60,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.lightBg,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage('${cart.image}'),
                ),
              ),
              margin: const EdgeInsets.only(right: 16),
            ),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('${cart.name}', style: titleTs),
                  Text('${cart.category}', style: labelSmallTs),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text('${cart.price}', style: titleTs),
                      ),

                      // TODO: Add number picker.
                      Container(
                        height: 40,
                        width: 100,
                        color: AppColors.primary,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
