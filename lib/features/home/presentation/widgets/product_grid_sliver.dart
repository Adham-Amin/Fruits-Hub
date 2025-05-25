import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/poduct_item.dart';

class ProductGird extends StatelessWidget {
  const ProductGird({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => const ProductItem(),
    );
  }
}