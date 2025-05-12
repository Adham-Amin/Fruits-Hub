import 'package:flutter/material.dart';
import 'package:fruits_hub/core/functions/on_generate_route.dart';

void main() {
  runApp(const FruitsHub());
}

class FruitsHub extends StatelessWidget {
  const FruitsHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Cairo',
      ),
      onGenerateRoute: onGenerateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
    );
  }
}