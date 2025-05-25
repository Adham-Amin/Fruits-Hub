import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/build_app_bar.dart';
import 'package:fruits_hub/features/best_seller/presentation/widgets/best_seller_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';

class BestSellerView extends StatelessWidget {
  const BestSellerView({super.key});

  static const routeName = '/best_seller_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: S.of(context).bestSelling),
      body: const BestSellerViewBody(),
    );
  }
}