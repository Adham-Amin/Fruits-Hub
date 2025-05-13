import 'package:flutter/material.dart';
import 'package:fruits_hub/features/auth/presentation/views/login_view.dart';
import 'package:fruits_hub/features/onbording/presentation/view/onbording_view.dart';
import 'package:fruits_hub/features/splash/presentation/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());
    case OnbordingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnbordingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => const LoginView());
    default:
      return MaterialPageRoute(builder: (context) => const SplashView());
  }
}
