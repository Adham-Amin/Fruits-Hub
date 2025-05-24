import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/functions/check_local.dart';
import 'package:fruits_hub/core/functions/get_user.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/generated/l10n.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomHomeAppBar()),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 16),
                CustomSearchTextField(),
                SizedBox(height: 12),
                OfferList(),
                SizedBox(height: 12),
                BestSellerHeader(),
                SizedBox(height: 12),
              ],
            ),
          ),
        ),
        ProductGird(),
        SliverToBoxAdapter(child: SizedBox(height: 32)),
      ],
    );
  }
}

class ProductGird extends StatelessWidget {
  const ProductGird({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 163 / 214,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => const ProductItem(),
    );
  }
}

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
          onTap: () {},
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

class CustomHomeAppBar extends StatelessWidget {
  const CustomHomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(AppAssets.imagesProfileImage),
      title: Text(
        S.of(context).goodMorning,
        style: AppStyles.textRegular16(
          context,
        ).copyWith(color: AppColors.lightGrey),
      ),
      subtitle: Text(
        getUser().name,
        style: AppStyles.textBold16(context).copyWith(color: AppColors.black),
      ),
      trailing: Container(
        decoration: ShapeDecoration(
          color: AppColors.backgroundIcon,
          shape: OvalBorder(),
        ),
        child: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppAssets.imagesIconNotification),
        ),
      ),
    );
  }
}

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        shadows: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.1),
            blurRadius: 9,
            offset: Offset(0, 2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(AppAssets.imagesIconSearch)),
          ),
          hintText: S.of(context).searchHere,
          hintStyle: AppStyles.textRegular13(
            context,
          ).copyWith(color: AppColors.lightGrey),
          suffixIcon: SizedBox(
            width: 20,
            child: Center(child: SvgPicture.asset(AppAssets.imagesIconFilter)),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

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

class OfferList extends StatelessWidget {
  const OfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return const Padding(
            padding: EdgeInsets.only(left: 4),
            child: OfferItem(),
          );
        }),
      ),
    );
  }
}
