import 'package:flipgrid_mobile/views/confirmation/confirmation_view.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../controllers/auth_controller.dart';
import '../../controllers/confirmation_controller.dart';
import '../../views/signup/signup_view.dart';

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
