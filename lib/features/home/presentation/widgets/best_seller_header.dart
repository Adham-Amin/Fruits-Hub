import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/features/best_seller/presentation/views/best_seller_view.dart';
import 'package:fruits_hub/generated/l10n.dart';

class BestSellerHeader extends StatelessWidget {
  const BestSellerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          S.of(context).bestSelling,
          style: AppStyles.textBold16(context).copyWith(color: AppColors.black),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, BestSellerView.routeName);
          },
          child: Text(
            S.of(context).more,
            style: AppStyles.textRegular13(
              context,
            ).copyWith(color: AppColors.lightGrey),
          ),
        ),
      ],
    );
  }
}