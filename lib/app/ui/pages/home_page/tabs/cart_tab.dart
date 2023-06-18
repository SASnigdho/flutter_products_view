import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/cart_controller.dart';

class CartTab extends GetView<CartController> {
  const CartTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('CartTab'),
    );
  }
}
