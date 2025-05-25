import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/domain/entities/bottom_navigation_entity.dart';
import 'package:fruits_hub/features/home/presentation/widgets/in_or_active_bottom_navigation_item.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  const CustomBottomNavigationBarItem({
    super.key,
    required this.isActive,
    required this.item,
  });

  final bool isActive;
  final BottomNavigationEntity item;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveBottomItem(title: item.title, icon: item.iconActive)
        : NotActiveBottomItem(icon: item.iconNotActive);
  }
}