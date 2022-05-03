import 'package:flipgrid_mobile/core/domain/entities/user_signup_entity.dart';
import 'package:flipgrid_mobile/core/providers/user_signup_provider.dart';
import 'package:flipgrid_mobile/views/confirmation/confirmation_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

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
    Navigator.push(
      context,
      PageTransition(
        child: const ConfirmationView(),
        type: PageTransitionType.bottomToTop,
      ),
    );
    isLoading = false;
  }

  togglePasswordObscure() => isPasswordObscure = !isPasswordObscure;
}
