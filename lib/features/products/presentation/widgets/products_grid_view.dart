import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/widgets/poduct_item.dart';
import 'package:fruits_hub/features/home/presentation/manager/cubit/get_product_cubit.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductCubit, GetProductState>(
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
    );
  }
}