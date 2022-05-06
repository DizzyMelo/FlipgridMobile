import 'package:flipgrid_mobile/core/domain/entities/user_signup_entity.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../core/providers/user_signup_provider.dart';

part 'confirmation_controller.g.dart';

class ConfirmationController = ConfirmationControllerBase
    with _$ConfirmationController;

abstract class ConfirmationControllerBase with Store {
  @observable
  UserSignUpEntity user = UserSignUpEntity();

  @observable
  String confirmationGreeting = "";

  setUserConfirmation(BuildContext context) async {
    user = context.read<UserSignupProvider>().user!;
    String greeting = "";

    if (user.firstName == null || user.firstName!.isEmpty) {
      greeting = "Hello!";
    } else {
      greeting = "Hello, ${user.firstName}!";
    }
    confirmationGreeting = greeting;
  }
}
