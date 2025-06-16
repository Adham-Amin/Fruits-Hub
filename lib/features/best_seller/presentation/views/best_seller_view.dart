import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/repos/product_repo.dart';
import 'package:fruits_hub/core/services/get_it_sevices.dart';
import 'package:fruits_hub/core/widgets/build_app_bar.dart';
import 'package:fruits_hub/features/best_seller/presentation/widgets/best_seller_view_body.dart';
import 'package:fruits_hub/features/home/presentation/manager/cubit/get_product_cubit.dart';
import 'package:fruits_hub/generated/l10n.dart';

class BestSellerView extends StatelessWidget {
  const BestSellerView({super.key});

  static const routeName = '/best_seller_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: S.of(context).bestSelling,
        backButton: true,
      ),
      body: BlocProvider(
        create:
            (context) =>
                GetProductCubit(productRepo: getIt.get<ProductRepo>())
                  ..getBestSellerProducts(),
        child: SafeArea(child: const BestSellerViewBody()),
      ),
    );
  }
}
