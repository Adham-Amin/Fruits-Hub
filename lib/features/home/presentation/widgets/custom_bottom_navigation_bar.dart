import 'package:flutter/material.dart';
import 'package:fruits_hub/core/utils/app_colors.dart';
import 'package:fruits_hub/features/home/domain/entities/bottom_navigation_entity.dart';
import 'package:fruits_hub/features/home/presentation/widgets/custom_bottom_navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      width: double.infinity,
      decoration: ShapeDecoration(
        color: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: AppColors.black.withValues(alpha: 0.3),
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        children:
            bottomNavigationItems(context).asMap().entries.map((e) {
              int index = e.key;
              var item = e.value;
              return Expanded(
                flex: currentIndex == index ? 3 : 2,
                child: GestureDetector(
                  onTap: () => setState(() => currentIndex = index),
                  child: CustomBottomNavigationBarItem(
                    isActive: index == currentIndex,
                    item: item,
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}