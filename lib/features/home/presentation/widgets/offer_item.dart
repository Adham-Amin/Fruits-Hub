import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/functions/check_local.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: MediaQuery.of(context).size.width - 32,
        child: AspectRatio(
          aspectRatio: 342 / 158,
          child: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  AppAssets.imagesOfferImage,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                top: 0,
                right: checkLocal() ? 0 : null,
                left: checkLocal() ? null : 0,
                bottom: 0,
                child: SvgPicture.asset(AppAssets.imagesBkgroundOffer),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).offers,
                        style: AppStyles.textRegular13(
                          context,
                        ).copyWith(color: AppColors.white),
                      ),
                      Text(
                        S.of(context).discount,
                        style: AppStyles.textBold19(
                          context,
                        ).copyWith(color: AppColors.white),
                      ),
                      SizedBox(
                        height: 32,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4),
                            ),
                          ),
                          child: Text(
                            S.of(context).shopNow,
                            style: AppStyles.textBold13(
                              context,
                            ).copyWith(color: AppColors.primary),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}