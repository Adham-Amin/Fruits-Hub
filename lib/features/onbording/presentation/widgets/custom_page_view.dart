import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_assets.dart';
import 'package:fruits_hub/features/onbording/presentation/widgets/page_view_item.dart';
import 'package:fruits_hub/generated/l10n.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.controller});

  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.86,
      width: double.infinity,
      child: PageView(
        controller: controller,
        children: [
          PageViewItem(
            isVisible: true,
            bkgroundImage: AppAssets.imagesBkgroundOnbording1,
            image: AppAssets.imagesFruitBasket,
            description:
                S.of(context).onboarding1Description,
          ),
          PageViewItem(
            isVisible: false,
            bkgroundImage: AppAssets.imagesBkgroundOnbording2,
            image: AppAssets.imagesPineapple,
            title: S.of(context).onboarding2Title,
            description:
                S.of(context).onboarding2Description,
          ),
        ],
      ),
    );
  }
}
