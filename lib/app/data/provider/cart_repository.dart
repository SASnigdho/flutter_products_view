import 'dart:developer';

import 'package:flutter_products_view/app/data/provider/interfaces/i_cart_repository.dart';
import 'package:flutter_products_view/app/data/provider/repository.dart';

import '../models/cart/cart.dart';

class CartRepository extends Repository implements ICartRepository {
  @override
  Future<void> delete(Cart cart) async {
    try {
      await db.delete(cart);
    } catch (e) {
      log('Error => CartRepository:: delete@ $e');
    }
  }

  @override
  Future<Cart?> getCart(int id) async {
    try {
      return await db.getCart(id);
    } catch (e) {
      log('Error => CartRepository:: getCart@ $e');

      return null;
    }
  }

  @override
  Future<List<Cart>> getCarts() async {
    final carts = <Cart>[];
    try {
      final res = await db.getCarts();

      carts.addAll(res);

      return carts;
    } catch (e) {
      log('Error => CartRepository:: getCarts@ $e');
      return carts;
    }
  }

  @override
  Future<void> save(Cart cart) async {
    try {
      await db.save(cart);
    } catch (e) {
      log('Error => CartRepository:: save@ $e');
    }
  }
}
