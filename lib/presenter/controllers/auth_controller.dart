import 'package:flipgrid_mobile/core/navigation/routes.dart';
import 'package:flipgrid_mobile/core/providers/user_signup_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

import '../../domain/entities/user_signup_entity.dart';

part 'auth_controller.g.dart';

class AuthController = AuthControllerBase with _$AuthController;

abstract class AuthControllerBase with Store {
  @observable
  bool isLoading = false;

  @observable
  bool isPasswordObscure = true;

  signup(BuildContext context, UserSignUpEntity signUpEntity) async {
    isLoading = true;
    await Future.delayed(const Duration(seconds: 1));
    context.read<UserSignupProvider>().setUser(signUpEntity);
    Navigator.pushNamed(context, Routes.confirmationRoute.route);
    isLoading = false;
  }

  togglePasswordObscure() => isPasswordObscure = !isPasswordObscure;
}
