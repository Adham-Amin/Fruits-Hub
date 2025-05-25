import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: ShapeDecoration(
            color: AppColors.backgroundTF,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              Image.asset(AppAssets.imagesStrawberry, width: 115),
              const SizedBox(height: 24),
              ListTile(
                title: Text(
                  S.of(context).strawberry,
                  style: AppStyles.textSemiBold13(
                    context,
                  ).copyWith(color: AppColors.black),
                ),
                subtitle: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: S.of(context).price,
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
                trailing: Container(
                  width: 36,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: AppColors.primary,
                    shape: OvalBorder(),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add, size: 16, color: AppColors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppAssets.imagesHeart),
        ),
      ],
    );
  }
}