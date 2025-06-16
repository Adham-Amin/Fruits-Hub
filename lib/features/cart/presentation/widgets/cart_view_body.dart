import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/core/widgets/custom_button.dart';
import 'package:fruits_hub/features/cart/presentation/widgets/cart_item.dart';

class CartViewBody extends StatelessWidget {
  const CartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: AppColors.background,
                padding: const EdgeInsets.all(8),
                child: Text(
                  'لديك 3 منتجات في سله التسوق',
                  textAlign: TextAlign.center,
                  style: AppStyles.textRegular13(
                    context,
                  ).copyWith(color: AppColors.primary),
                ),
              ),
              const SizedBox(height: 24),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 10,
                separatorBuilder:
                    (context, index) =>
                        const Divider(color: AppColors.lightBorder),
                itemBuilder: (context, index) => const CartItem(),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: CustomButton(title: 'الدفع', onPressed: () {}),
          ),
        ),
      ],
    );
  }
}