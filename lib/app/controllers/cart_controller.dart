import 'dart:developer';

import 'package:flutter_products_view/app/data/models/cart/cart.dart';
import 'package:get/get.dart';

import 'base_controller.dart';

class CartController extends BaseController {
  final isLoading = false.obs;
  final cartItems = <Cart>[].obs;
  final subTotal = 0.obs;

  @override
  Future<void> onReady() async {
    await fetchCartItems();
    calculateSubTotal();
    super.onReady();
  }

  Future<void> fetchCartItems() async {
    isLoading.value = true;

    try {
      await Future.delayed(const Duration(seconds: 2));

      cartItems.addAll(
        [
          Cart(
            name: 'Melvin Stanley',
            category: 'Bangladesh',
            image:
                'https://unsplash.com/photos/2cFZ_FB08UM/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHx8fDE2ODcxODg4Nzd8MA&force=true&w=340',
            price: 10,
            quantity: 1,
          ),
          Cart(
            name: 'Melvin Stanley',
            category: 'Bangladesh',
            image:
                'https://unsplash.com/photos/2cFZ_FB08UM/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHx8fDE2ODcxODg4Nzd8MA&force=true&w=340',
            price: 10,
            quantity: 1,
          ),
          Cart(
            name: 'Melvin Stanley',
            category: 'Bangladesh',
            image:
                'https://unsplash.com/photos/2cFZ_FB08UM/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHx8fDE2ODcxODg4Nzd8MA&force=true&w=340',
            price: 10,
            quantity: 1,
          ),
          Cart(
            name: 'Melvin Stanley',
            category: 'Bangladesh',
            image:
                'https://unsplash.com/photos/2cFZ_FB08UM/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHx8fDE2ODcxODg4Nzd8MA&force=true&w=340',
            price: 10,
            quantity: 1,
          ),
          Cart(
            name: 'Melvin Stanley',
            category: 'Bangladesh',
            image:
                'https://unsplash.com/photos/2cFZ_FB08UM/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHx8fDE2ODcxODg4Nzd8MA&force=true&w=340',
            price: 10,
            quantity: 1,
          ),
          Cart(
            name: 'Melvin Stanley',
            category: 'Bangladesh',
            image:
                'https://unsplash.com/photos/2cFZ_FB08UM/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHx8fDE2ODcxODg4Nzd8MA&force=true&w=340',
            price: 10,
            quantity: 1,
          ),
          Cart(
            name: 'Melvin Stanley',
            category: 'Bangladesh',
            image:
                'https://unsplash.com/photos/2cFZ_FB08UM/download?ixid=M3wxMjA3fDB8MXxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHx8fDE2ODcxODg4Nzd8MA&force=true&w=340',
            price: 10,
            quantity: 1,
          ),
        ],
      );

      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      log('Error => CartController:: fetchCartItems@ $e');
    }
  }

  void calculateSubTotal() {
    int totalPrice = 0;

    for (final cart in cartItems) {
      totalPrice += (cart.quantity ?? 0) * cart.price!;
    }

    subTotal.value = totalPrice;
  }
}
