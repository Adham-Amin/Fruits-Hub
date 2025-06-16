import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruits_hub/core/repos/product_repo.dart';
import 'package:fruits_hub/core/services/get_it_sevices.dart';
import 'package:fruits_hub/features/home/presentation/manager/cubit/get_product_cubit.dart';
import 'package:fruits_hub/features/home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetProductCubit(productRepo: getIt.get<ProductRepo>()),
      child: HomeViewBody(),
    );
  }
}
