import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.category});

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
              Icon(_getRandomIcon(), size: 50),
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

  IconData _getRandomIcon() {
    final icons = <IconData>[
      Icons.spa,
      Icons.compost,
      Icons.eco,
      Icons.speaker_notes_off_outlined,
    ];

    Random random = Random();
    int randomNumber = random.nextInt(3);

    return icons[randomNumber];
  }
}
