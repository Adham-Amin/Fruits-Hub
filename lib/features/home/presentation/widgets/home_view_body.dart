import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/widgets/custom_search_text_field.dart';
import 'package:fruits_hub/features/home/presentation/widgets/best_seller_header.dart';
import 'package:fruits_hub/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:fruits_hub/features/home/presentation/widgets/offer_list.dart';
import 'package:fruits_hub/features/home/presentation/widgets/product_grid_sliver.dart';

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