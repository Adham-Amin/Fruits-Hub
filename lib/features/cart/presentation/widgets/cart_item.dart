import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/quantity_button.dart';
import 'package:fruits_hub/generated/l10n.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundTF,
              borderRadius: BorderRadius.circular(4),
            ),
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              AppAssets.imagesStrawberry,
              width: 60,
              height: 60,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'فراولة',
                          style: AppStyles.textSemiBold16(context),
                        ),
                        Text(
                          '1 كيلو',
                          style: AppStyles.textBold13(
                            context,
                          ).copyWith(color: AppColors.orange),
                        ),
                      ],
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.delete_outline,
                        size: 20,
                        color: AppColors.lightGrey,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    QuantityButton(
                      onPressed: () {},
                      backgroundColor: AppColors.primary,
                      icon: Icons.add,
                      colorIcon: AppColors.white,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      '1',
                      style: AppStyles.textBold13(
                        context,
                      ).copyWith(color: AppColors.primary),
                    ),
                    const SizedBox(width: 12),
                    QuantityButton(
                      onPressed: () {},
                      backgroundColor: AppColors.lightGrey,
                      icon: Icons.remove,
                      colorIcon: AppColors.grey,
                    ),
                    const Spacer(),
                    Text(
                      '60 ${S.of(context).price}',
                      style: AppStyles.textBold13(
                        context,
                      ).copyWith(color: AppColors.orange),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
