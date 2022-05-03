import 'package:flutter/material.dart';

import '../../../core/components/custom_textfield_component.dart';

class SignupFormComponent extends StatelessWidget {
  SignupFormComponent({Key? key}) : super(key: key);

  final firstNameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final websiteController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Form(
        key: _formKey,
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
            ),
            CustomTextfieldComponent(
              label: "Password",
              controller: passwordController,
            ),
            CustomTextfieldComponent(
              label: "Website",
              controller: websiteController,
              inputType: TextInputType.url,
            ),
          ],
        ),
      ),
    );
  }
}
