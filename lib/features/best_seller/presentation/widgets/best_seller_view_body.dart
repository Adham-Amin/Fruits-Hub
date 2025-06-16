import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/poduct_item.dart';
import 'package:fruits_hub/features/home/presentation/manager/cubit/get_product_cubit.dart';
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
            style: AppStyles.textBold16(
              context,
            ).copyWith(color: AppColors.black),
          ),
          SizedBox(height: 8),
          BlocBuilder<GetProductCubit, GetProductState>(
            builder: (context, state) {
              if (state is GetProductSuccess) {
                return Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.7,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 16,
                    ),
                    itemCount: state.products.length,
                    itemBuilder:
                        (context, index) =>
                            ProductItem(product: state.products[index]),
                  ),
                );
              } else if (state is GetProductError) {
                return Center(child: Text(state.message));
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ],
      ),
    );
  }
}
