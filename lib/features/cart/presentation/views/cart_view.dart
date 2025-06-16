import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_styles.dart';
import 'package:fruits_hub/features/cart/presentation/widgets/cart_view_body.dart';
import 'package:fruits_hub/generated/l10n.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).cart, style: AppStyles.textBold19(context)),
          centerTitle: true,
        ),
        body: CartViewBody(),
      ),
    );
  }
}
