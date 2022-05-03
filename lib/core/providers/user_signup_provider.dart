import 'package:flipgrid_mobile/core/domain/entities/user_signup_entity.dart';
import 'package:flutter/material.dart';

class UserSignupProvider with ChangeNotifier {
  UserSignUpEntity? _user;

  UserSignUpEntity? get user => _user;

  void setUser(UserSignUpEntity user) {
    _user = user;
    notifyListeners();
  }

  void resetUser() {
    _user = null;
    notifyListeners();
  }
}
