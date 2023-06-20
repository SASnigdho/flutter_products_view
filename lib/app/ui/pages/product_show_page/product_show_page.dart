import 'package:flutter/material.dart';
import 'package:flutter_products_view/app/data/models/product/product.dart';
import 'package:get/get.dart';
import '../../../const/app_colors.dart';
import '../../../controllers/product_show_controller.dart';
import '../home_page/widgets/product_card.dart';
import '../home_page/widgets/product_category.dart';

// ignore: must_be_immutable
class ProductShowPage extends GetView<ProductShowController> {
  ProductShowPage({super.key}) {
    product = Get.arguments as Product;
  }

  late Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.lightBg,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage('${product.image}'),
                ),
              ),
              margin: const EdgeInsets.only(right: 16),
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),

      //

      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              ProductCategory(category: '${product.category}'),
              ProductCategory(category: '${product.category}'),
            ],
          ),
          const SizedBox(height: 30),
          ProductCard(product),
        ],
      ),
    );
  }
}
