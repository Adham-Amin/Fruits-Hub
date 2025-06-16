import 'package:flutter/material.dart';
import 'package:fruits_hub/features/home/presentation/views/home_view.dart';
import 'package:fruits_hub/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:fruits_hub/features/products/presentation/views/product_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  static const routeName = '/main';

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: currentIndex,
          children: [HomeView(), ProductView(), HomeView(), HomeView()],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        index: (value) => setState(() => currentIndex = value),
      ),
    );
  }
}
