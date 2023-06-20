import 'package:flutter_products_view/app/data/models/cart/cart.dart';

abstract class IDbService {
  Future<List<Cart>> getCarts();
  Future<void> save(Cart cart);
  Future<Cart?> getCart(int id);
  Future<void> delete(Cart task);
}