import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/build_app_bar.dart';
import 'package:fruits_hub/core/widgets/custom_search_text_field.dart';
import 'package:fruits_hub/features/home/presentation/manager/cubit/get_product_cubit.dart';
import 'package:fruits_hub/features/products/presentation/widgets/products_grid_view.dart';
import 'package:fruits_hub/generated/l10n.dart';

class ProductViewBody extends StatelessWidget {
  const ProductViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          buildAppBar(
            context,
            title: S.of(context).products,
            backButton: false,
            notificationButton: true,
          ),
          SizedBox(height: 16),
          CustomSearchTextField(),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${BlocProvider.of<GetProductCubit>(context).products.length} ${S.of(context).results}',
                style: AppStyles.textBold16(context),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1, color: AppColors.lightBorder),
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: SvgPicture.asset(AppAssets.imagesArrowSwapHorizontal),
              ),
            ],
          ),
          SizedBox(height: 16),
          ProductsGridView(),
        ],
      ),
    );
  }
}