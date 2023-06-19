import 'package:flutter/material.dart';
import 'package:flutter_products_view/app/const/app_colors.dart';
import 'package:flutter_products_view/app/controllers/product_controller.dart';
import 'package:get/get.dart';

class ProductsTab extends GetView<ProductController> {
  const ProductsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      // shrinkWrap: true,
      itemBuilder: (context, index) {
        return Card(
          child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primary,
                    ),
                    margin: const EdgeInsets.only(right: 16),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product Name Product Name Product Name Product Name',
                          style: Get.textTheme.titleLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text('Product Name', style: Get.textTheme.labelSmall),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(),
      itemCount: 100,
      padding: const EdgeInsets.symmetric(horizontal: 16),
    );
  }
}
