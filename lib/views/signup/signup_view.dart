import 'package:flipgrid_mobile/controllers/auth_controller.dart';
import 'package:flipgrid_mobile/core/components/button_component.dart';
import 'package:flipgrid_mobile/core/components/header_component.dart';
import 'package:flipgrid_mobile/core/components/scaffold_component.dart';
import 'package:flipgrid_mobile/core/domain/entities/user_signup_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'components/signup_form_component.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final websiteController = TextEditingController();

  final controller = AuthController();

  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              const HeaderComponent(
                title: 'Profile Creation',
                subtitle:
                    'Use the form below to submit your portfolio. An email and password are required',
              ),
              SignupFormComponent(
                formKey: _formKey,
                controller: controller,
                firstNameController: firstNameController,
                emailController: emailController,
                passwordController: passwordController,
                websiteController: websiteController,
              ),
            ],
          ),
          Observer(
            builder: (_) => ButtonComponent(
              isLoading: controller.isLoading,
              title: "Submit",
              onTap: () {
                if (_formKey.currentState!.validate()) {
                  UserSignUpEntity signUpEntity = UserSignUpEntity();
                  signUpEntity.setFirstName = firstNameController.text;
                  signUpEntity.setEmail = emailController.text;
                  signUpEntity.setPassword = passwordController.text;
                  signUpEntity.setWebsite = websiteController.text;
                  controller.signup(context, signUpEntity);
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
