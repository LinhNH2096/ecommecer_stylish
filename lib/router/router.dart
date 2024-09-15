import 'package:ecommerce_stylish_flutter/ui/pages/auth/forgot_password_page.dart';
import 'package:ecommerce_stylish_flutter/ui/pages/auth/login_page.dart';
import 'package:ecommerce_stylish_flutter/ui/pages/auth/register_page.dart';
import 'package:flutter/material.dart';
import 'route_page.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // get argument bundle that was attached
    final arguments = settings.arguments;

    // use switch case to determine the requested route.
    switch (settings.name) {
      case LOGIN_PATH:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
          settings: settings,
        );
      case REGISTER_PATH:
        return MaterialPageRoute(
          builder: (_) => RegisterScreen(),
          settings: settings,
        );
      case FORGOT_PASSWORD_PATH:
        return MaterialPageRoute(
          builder: (_) => ForgotPasswordScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
          settings: settings,
        );
    }
  }
}
