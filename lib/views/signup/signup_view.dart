import 'package:flipgrid_mobile/core/components/button_component.dart';
import 'package:flipgrid_mobile/core/components/header_component.dart';
import 'package:flipgrid_mobile/core/components/scaffold_component.dart';
import 'package:flutter/material.dart';

import 'components/signup_form_component.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
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
              SignupFormComponent(),
            ],
          ),
          ButtonComponent(
            title: "Submit",
            onTap: () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/confirmation',
              (route) => false,
            ),
          )
        ],
      ),
    );
  }
}
