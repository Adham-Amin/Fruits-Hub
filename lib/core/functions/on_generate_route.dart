import 'package:flutter/material.dart';
import 'package:fruits_hub/main.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(builder: (context) => const FruitsHub());
    default:
      return MaterialPageRoute(builder: (context) => const FruitsHub());
  }
}
