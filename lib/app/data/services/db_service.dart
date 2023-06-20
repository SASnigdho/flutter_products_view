import 'dart:developer';

import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

import '../contracts/I_db_service.dart';
import '../models/cart/cart.dart';

class DbService implements IDbService {
  late Future<Isar> _db;

  DbService() {
    _db = openDB();
  }

  Future<Isar> openDB() async {
    const dbName = 'collections';
    final dir = await getApplicationDocumentsDirectory();

    if (Isar.instanceNames.isEmpty) {
      return Isar.openSync(
        [CartSchema],
        directory: dir.path,
        name: dbName,
        inspector: true,
      );
    }

    return Future.value(Isar.getInstance(dbName));
  }

  @override
  Future<void> delete(Cart cart) async {
    try {
      final isar = await _db;

      await isar.writeTxn(() async {
        await isar.carts.delete(cart.id!);
      });
    } catch (e) {
      log('DbService:: delete@ $e');
    }
  }

  @override
  Future<Cart?> getCart(int id) async {
    try {
      final isar = await _db;
      final cart = await isar.carts.filter().idEqualTo(id).findFirst();

      return cart;
    } catch (e) {
      log('DbService:: getCart@ $e');
      return null;
    }
  }

  @override
  Future<List<Cart>> getCarts() async {
    final carts = <Cart>[];

    try {
      final isar = await _db;
      carts.addAll(await isar.carts.where().findAll());

      return carts;
    } catch (e) {
      log('DbService:: getCarts@ $e');
    }

    return carts;
  }

  @override
  Future<void> save(Cart cart) async {
    try {
      final isar = await _db;

      await isar.writeTxn(() async {
        await isar.carts.put(cart);
      });
    } catch (e) {
      log('DbService:: save@ $e');
    }
  }
}
