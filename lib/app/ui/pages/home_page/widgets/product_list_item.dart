import 'package:flutter/material.dart';
import 'package:flutter_products_view/app/data/models/product/product.dart';
import 'package:flutter_products_view/app/routes/route_names.dart';
import 'package:get/get.dart';

import '../../../../const/app_colors.dart';

class ProductListItem extends StatelessWidget {
  const ProductListItem(this.product, {super.key});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () async {
          await Get.toNamed(RouteNames.productShow, arguments: product);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 60,
                width: 80,
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
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${product.title}',
                      style: Get.textTheme.titleLarge,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${product.price}',
                            style: Get.textTheme.labelSmall),
                        Text(
                          '${product.rating?.rate}',
                          style: Get.textTheme.labelSmall,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
