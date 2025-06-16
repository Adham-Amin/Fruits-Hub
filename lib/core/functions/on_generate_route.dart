import 'package:flutter/material.dart';
import 'package:fruits_hub/core/entities/product_model.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/auth/presentation/views/signin_view.dart';
import 'package:fruits_hub/features/best_seller/presentation/views/best_seller_view.dart';
import 'package:fruits_hub/features/home/presentation/views/main_view.dart';
import 'package:fruits_hub/features/onbording/presentation/view/onbording_view.dart';
import 'package:fruits_hub/features/products/presentation/views/product_details_view.dart';
import 'package:fruits_hub/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnbordingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnbordingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    case SigninView.routeName:
      return MaterialPageRoute(builder: (context) => const SigninView());
    case MainView.routeName:
      return MaterialPageRoute(builder: (context) => const MainView());
    case BestSellerView.routeName:
      return MaterialPageRoute(builder: (context) => const BestSellerView());
    case ProductDetailsView.routeName:
      return MaterialPageRoute(builder: (context) => ProductDetailsView(
        product: settings.arguments as ProductModel,
      ));
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
