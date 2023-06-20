import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cart.g.dart';

@JsonSerializable()
@collection
class Cart {
  Id? id;
  String? name;
  int? price;
  String? category;
  String? image;
  int? quantity;

  Cart({
    this.id,
    this.name,
    this.price,
    this.category,
    this.image,
    this.quantity,
  });

  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);

  Map<String, dynamic> toJson() => _$CartToJson(this);
}
