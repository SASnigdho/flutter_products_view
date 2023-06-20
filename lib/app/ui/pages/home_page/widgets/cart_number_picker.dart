import 'package:flutter/material.dart';

class CartNumberPicker extends StatelessWidget {
  const CartNumberPicker({
    super.key,
    required this.quantity,
    required this.onIncrease,
    required this.onDecrease,
  });

  final int quantity;
  final VoidCallback onIncrease;
  final VoidCallback onDecrease;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
      height: 30,
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: onDecrease,
              icon: const Icon(Icons.remove, color: Colors.red, size: 14),
            ),
          ),
          const SizedBox(width: 8),
          Text('$quantity'),
          const SizedBox(width: 8),
          Material(
            color: Colors.transparent,
            child: IconButton(
              onPressed: onIncrease,
              icon: const Icon(Icons.add, color: Colors.green, size: 14),
            ),
          ),
        ],
      ),
    );
  }
}
