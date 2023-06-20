// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cart _$CartFromJson(Map<String, dynamic> json) => Cart(
      name: json['name'] as String?,
      price: json['price'] as int?,
      category: json['category'] as String?,
      image: json['image'] as String?,
      quantity: json['quantity'] as int?,
    );

Map<String, dynamic> _$CartToJson(Cart instance) => <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'category': instance.category,
      'image': instance.image,
      'quantity': instance.quantity,
    };
