import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProductCategory extends StatelessWidget {
  const ProductCategory({super.key, required this.category});

  final String category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Icon(Icons.category, size: 50),
              const SizedBox(height: 16),
              Text(
                category.toUpperCase(),
                style: Get.textTheme.labelSmall,
                overflow: TextOverflow.fade,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
