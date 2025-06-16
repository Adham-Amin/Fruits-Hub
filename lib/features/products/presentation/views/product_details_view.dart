import 'package:flutter/material.dart';
import 'package:fruits_hub/core/entities/product_model.dart';
import 'package:fruits_hub/features/products/presentation/widgets/product_details_view_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key, required this.product});

  static const routeName = '/product_details_view';
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: ProductDetailsViewBody(
      product: product,
      ),
    ));
  }
}