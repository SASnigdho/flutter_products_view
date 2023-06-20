import 'dart:developer';

import 'package:flutter_products_view/app/data/models/cart/cart.dart';
import 'package:flutter_products_view/app/data/provider/interfaces/i_cart_repository.dart';
import 'package:get/get.dart';

import 'base_controller.dart';

class CartController extends BaseController {
  CartController(this.repository);

  final ICartRepository repository;

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
      final res = await repository.getCarts();

      cartItems.addAll(res);

      isLoading.value = false;
    } catch (e) {
      isLoading.value = false;
      log('Error => CartController:: fetchCartItems@ $e');
    }
  }

  Future<void> addToCart(Cart cart) async {
    try {
      await repository.save(cart);

      await fetchCartItems();
    } catch (e) {
      log('Error => CartController:: addToCart@ $e');
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
