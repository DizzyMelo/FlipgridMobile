import 'package:flipgrid_mobile/controllers/auth_controller.dart';
import 'package:flipgrid_mobile/core/utils/validators/email_validator.dart';
import 'package:flipgrid_mobile/core/utils/validators/firstname_validator.dart';
import 'package:flipgrid_mobile/core/utils/validators/password_validator.dart';
import 'package:flipgrid_mobile/core/utils/validators/website_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/components/custom_textfield_component.dart';

class SignupFormComponent extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController websiteController;
  final AuthController controller;

  final firstNameValidator = FirstNameValidator();
  final emailValidator = EmailValidator();
  final passwordValidator = PasswordValidator();
  final websiteValidator = WebsiteValidator();

  final GlobalKey formKey;
  SignupFormComponent(
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
              validator: firstNameValidator,
            ),
            CustomTextfieldComponent(
              label: "Email Address",
              controller: emailController,
              inputType: TextInputType.emailAddress,
              validator: emailValidator,
            ),
            Observer(
              builder: (_) => CustomTextfieldComponent(
                label: "Password",
                controller: passwordController,
                validator: passwordValidator,
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
              validator: websiteValidator,
            ),
          ],
        ),
      ),
    );
  }
}
