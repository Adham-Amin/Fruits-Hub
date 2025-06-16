import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';

class ProductDetailsContainer extends StatelessWidget {
  const ProductDetailsContainer({
    super.key,
    required this.title,
    required this.subTitle,
    required this.icon,
  });

  final String title;
  final String subTitle;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.lightBorder),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(icon, width: 32, height: 32),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: AppStyles.textBold16(
                    context,
                  ).copyWith(color: AppColors.primary),
                  textAlign: TextAlign.right,
                ),
                Text(
                  subTitle,
                  style: AppStyles.textSemiBold13(
                    context,
                  ).copyWith(color: AppColors.lightGrey),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}