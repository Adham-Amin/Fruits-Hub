import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/widgets/offer_item.dart';

class OfferList extends StatelessWidget {
  const OfferList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return const Padding(
            padding: EdgeInsets.only(left: 4),
            child: OfferItem(),
          );
        }),
      ),
    );
  }
}