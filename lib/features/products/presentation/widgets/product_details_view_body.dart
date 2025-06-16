import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruits_hub/core/entities/product_model.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/products/presentation/widgets/product_details_container.dart';
import 'package:fruits_hub/features/products/presentation/widgets/product_name_and_price_section.dart';
import 'package:fruits_hub/features/products/presentation/widgets/rating_product_details_section.dart';
import 'package:fruits_hub/generated/l10n.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl, // لدعم العربية
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                SvgPicture.asset(AppAssets.imagesBKGCirccle),
                Positioned(
                  left: 90,
                  right: 90,
                  top: 90,
                  bottom: 90,
                  child: Image.network(
                    product.imageUrl!,
                    width: 115,
                    height: 100,
                  ),
                ),
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.black,
                    size: 20,
                  ),
                ),
              ],
            ),
            ProductNameAndPriceSection(product: product),
            const SizedBox(height: 12),
            RatingProductDetailsSection(product: product),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                product.description,
                style: AppStyles.textRegular13(context),
                textAlign: TextAlign.right,
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                spacing: 16,
                children: [
                  Expanded(
                    child: ProductDetailsContainer(
                      title:
                          '${product.expirationDate} ${S.of(context).months}',
                      subTitle: S.of(context).expiration,
                      icon: AppAssets.imagesExpireIcon,
                    ),
                  ),
                  Expanded(
                    child: ProductDetailsContainer(
                      title:
                          product.isOrignalProduct
                              ? S.of(context).yes
                              : S.of(context).no,
                      subTitle: S.of(context).organic,
                      icon: AppAssets.imagesOrganicIcon,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                spacing: 16,
                children: [
                  Expanded(
                    child: ProductDetailsContainer(
                      title: '${product.calories} ${S.of(context).calories}',
                      subTitle: S.of(context).grams,
                      icon: AppAssets.imagesCaloriesIcon,
                    ),
                  ),
                  Expanded(
                    child: ProductDetailsContainer(
                      title: product.rating.toString(),
                      subTitle: S.of(context).reviews,
                      icon: AppAssets.imagesRateIcon,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CustomButton(
                title: S.of(context).AddToCart,
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
