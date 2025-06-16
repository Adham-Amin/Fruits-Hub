import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/repos/product_repo.dart';
import 'package:fruits_hub/core/services/get_it_sevices.dart';
import 'package:fruits_hub/features/home/presentation/manager/cubit/get_product_cubit.dart';
import 'package:fruits_hub/features/products/presentation/widgets/product_view_body.dart';

class ProductView extends StatelessWidget {
  const ProductView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (context) =>
              GetProductCubit(productRepo: getIt.get<ProductRepo>())
                ..getProducts(),
      child: SafeArea(child: ProductViewBody()),
    );
  }
}
