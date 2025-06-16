import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/poduct_item.dart';
import 'package:fruits_hub/features/home/presentation/manager/cubit/get_product_cubit.dart';

class ProductGird extends StatelessWidget {
  const ProductGird({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductCubit, GetProductState>(
      builder: (context, state) {
        if (state is GetProductError) {
          return SliverToBoxAdapter(child: Center(child: Text(state.message)));
        } else if (state is GetProductSuccess) {
          return SliverGrid.builder(
            itemCount: state.products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 163 / 214,
              mainAxisSpacing: 8,
              crossAxisSpacing: 16,
            ),
            itemBuilder:
                (context, index) => ProductItem(product: state.products[index]),
          );
        } else {
          return SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
