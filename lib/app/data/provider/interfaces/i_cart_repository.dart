import '../../models/cart/cart.dart';

abstract class ICartRepository {
  Future<List<Cart>> getCarts();
  Future<void> save(Cart cart);
  Future<Cart?> getCart(int id);
  Future<void> delete(Cart cart);
}
