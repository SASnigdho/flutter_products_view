import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../const/app_colors.dart';
import '../../../../data/models/cart/cart.dart';
import 'cart_number_picker.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
    required this.cart,
    required this.onIncrease,
    required this.onDecrease,
    required this.onLongPress,
  });

  final Cart cart;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;
  final VoidCallback onLongPress;

  @override
  Widget build(BuildContext context) {
    final titleTs = Get.textTheme.headlineSmall;
    final labelSmallTs = Get.textTheme.labelSmall;

    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onLongPress: onLongPress,
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
                    Text(
                      '${cart.name}',
                      style: titleTs,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(cart.category!.toUpperCase(), style: labelSmallTs),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 100,
                          child: Text('${cart.price}', style: titleTs),
                        ),
                        CartNumberPicker(
                          quantity: cart.quantity ?? 1,
                          onDecrease: onDecrease,
                          onIncrease: onIncrease,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
