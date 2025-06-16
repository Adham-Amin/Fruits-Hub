import 'package:flutter/material.dart';
import 'package:fruits_hub/core/entities/product_model.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class RatingProductDetailsSection extends StatelessWidget {
  const RatingProductDetailsSection({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Icon(Icons.star, color: AppColors.yellow, size: 16),
          const SizedBox(width: 4),
          Text(
            product.rating.toString(),
            style: AppStyles.textSemiBold13(context),
          ),
          const SizedBox(width: 4),
          Text(
            '(${product.ratingCount}+)',
            style: AppStyles.textRegular13(
              context,
            ).copyWith(color: AppColors.grey),
          ),
          const SizedBox(width: 8),
          TextButton(
            onPressed: () {},
            child: Text(
              S.of(context).reviews,
              style: AppStyles.textBold13(
                context,
              ).copyWith(color: AppColors.primary),
            ),
          ),
        ],
      ),
    );
  }
}