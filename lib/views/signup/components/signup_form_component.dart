import 'package:flipgrid_mobile/controllers/auth_controller.dart';
import 'package:flipgrid_mobile/core/utils/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/components/custom_textfield_component.dart';

class SignupFormComponent extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController websiteController;
  final AuthController controller;

  final GlobalKey formKey;
  const SignupFormComponent(
      {Key? key,
      required this.formKey,
      required this.firstNameController,
      required this.emailController,
      required this.passwordController,
      required this.websiteController,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextfieldComponent(
              label: "First Name",
              controller: firstNameController,
              capitalization: TextCapitalization.words,
            ),
            CustomTextfieldComponent(
              label: "Email Address",
              controller: emailController,
              inputType: TextInputType.emailAddress,
              validator: (String? value) =>
                  FormValidator.validateEmailAddress(value),
            ),
            Observer(
              builder: (_) => CustomTextfieldComponent(
                label: "Password",
                controller: passwordController,
                validator: (String? value) =>
                    FormValidator.validatePassword(value),
                isSecuredField: true,
                isObscure: controller.isPasswordObscure,
                toggleSecuredFied: controller.togglePasswordObscure,
              ),
            ),
            CustomTextfieldComponent(
              label: "Website",
              controller: websiteController,
              inputType: TextInputType.url,
              inputAction: TextInputAction.done,
              validator: (String? value) =>
                  FormValidator.validateWebsite(value),
            ),
          ],
        ),
      ),
    );
  }
}
