import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/poduct_item.dart';
import 'package:fruits_hub/generated/l10n.dart';

class BestSellerViewBody extends StatelessWidget {
  const BestSellerViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Text(
            S.of(context).bestSelling,
            style: AppStyles.textBold16(context).copyWith(color: AppColors.black),
          ),
          SizedBox(height: 8),
          Expanded(
            child: GridView.builder(
              itemCount: 30,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.70,
                mainAxisSpacing: 8,
                crossAxisSpacing: 16,
              ),
              itemBuilder: (context, index) => const ProductItem(),
            ),
          ),
        ],
      ),
    );
  }
}
