import 'package:flutter/material.dart';
import 'package:flutter_products_view/app/const/app_colors.dart';
import 'package:flutter_products_view/app/ui/pages/home_page/widgets/cart_item.dart';
import 'package:get/get.dart';

import '../../../../controllers/cart_controller.dart';
import '../widgets/cart_summary.dart';

class CartTab extends GetView<CartController> {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          flex: 3,
          child: Obx(
            () => controller.isLoading.value
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primary,
                    ),
                  )
                : Obx(
                    () => ListView.separated(
                      itemBuilder: (context, i) {
                        final cart = controller.cartItems[i];

                        return CartItem(
                          cart: cart,
                          onDecrease: () {
                            int quantity = cart.quantity ?? 1;

                            if (quantity != 1) {
                              quantity--;
                              controller.cartItems[i].quantity = quantity;
                            }

                            controller.cartItems.refresh();
                          },
                          onIncrease: () {
                            int quantity = cart.quantity ?? 1;

                            if (quantity != 10) {
                              quantity++;
                              controller.cartItems.toList()[i].quantity =
                                  quantity;
                            }

                            controller.cartItems.refresh();
                          },
                        );
                      },
                      separatorBuilder: (_, i) => const SizedBox(),
                      itemCount: controller.cartItems.length,
                    ),
                  ),
          ),
        ),
        Flexible(
          flex: 2,
          child: Card(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const CartSummary('Subtotal', '10.99'),
                    const Divider(),
                    const CartSummary('Subtotal', '10.99'),
                    const Divider(),
                    const CartSummary('Subtotal', '10.99'),
                    const Divider(),

                    const SizedBox(height: 10),

                    //
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: AppColors.lightBg,
                        backgroundColor: AppColors.primary,
                      ),
                      onPressed: () {},
                      child: const Text('Process to Checkout'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
