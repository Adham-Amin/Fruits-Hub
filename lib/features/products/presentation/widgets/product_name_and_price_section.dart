import 'package:flutter/material.dart';
import 'package:fruits_hub/core/entities/product_model.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/quantity_button.dart';
import 'package:fruits_hub/generated/l10n.dart';

class ProductNameAndPriceSection extends StatelessWidget {
  const ProductNameAndPriceSection({super.key, required this.product});

  final ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListTile(
        contentPadding: const EdgeInsets.all(0),
        title: Text(product.name, style: AppStyles.textBold16(context)),
        subtitle: Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '${product.price} ${S.of(context).price}',
                style: AppStyles.textBold13(
                  context,
                ).copyWith(color: AppColors.orange),
              ),
              TextSpan(
                text: S.of(context).kilo,
                style: AppStyles.textRegular13(
                  context,
                ).copyWith(color: AppColors.lightOrange),
              ),
            ],
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            QuantityButton(
              onPressed: () {},
              colorIcon: AppColors.white,
              backgroundColor: AppColors.primary,
              icon: Icons.add,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Text('1', style: AppStyles.textBold16(context)),
            ),
            QuantityButton(
              onPressed: () {},
              colorIcon: AppColors.grey,
              backgroundColor: AppColors.white,
              icon: Icons.remove,
            ),
          ],
        ),
      ),
    );
  }
}