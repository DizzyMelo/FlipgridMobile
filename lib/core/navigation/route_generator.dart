import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../presenter/controllers/auth_controller.dart';
import '../../presenter/controllers/confirmation_controller.dart';
import '../../presenter/views/confirmation/confirmation_view.dart';
import '../../presenter/views/signup/signup_view.dart';

class RouteGenerator {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    ConfirmationController _confirmationController = ConfirmationController();
    AuthController _authController = AuthController();
    switch (settings.name) {
      case '/signup':
        return MaterialPageRoute(
            builder: (context) => SignupView(
                  controller: _authController,
                ));
      case '/confirmation':
        return PageTransition(
            child: ConfirmationView(
              controller: _confirmationController,
            ),
            type: PageTransitionType.bottomToTop);

      default:
        return MaterialPageRoute(
            builder: (context) => SignupView(
                  controller: _authController,
                ));
    }
  }
}
