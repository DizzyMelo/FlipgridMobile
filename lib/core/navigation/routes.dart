abstract class Routable {
  final String _routeName = "/";

  String get route => _routeName;
}

class SignupRoute implements Routable {
  @override
  final String _routeName = '/signup';

  @override
  String get route => _routeName;
}

class ConfirmationRoute implements Routable {
  @override
  final String _routeName = '/signup';

  @override
  String get route => _routeName;
}

class Routes {
  static final Routable signupRoute = SignupRoute();
  static final Routable confirmationRoute = ConfirmationRoute();
}
