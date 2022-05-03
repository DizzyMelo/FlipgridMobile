import 'package:flipgrid_mobile/core/components/button_component.dart';
import 'package:flipgrid_mobile/core/components/header_component.dart';
import 'package:flipgrid_mobile/core/components/scaffold_component.dart';
import 'package:flipgrid_mobile/core/domain/entities/user_signup_entity.dart';
import 'package:flipgrid_mobile/core/theme/custom_text_style.dart';
import 'package:flipgrid_mobile/views/confirmation/components/not_required_text_component.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/providers/user_signup_provider.dart';

class ConfirmationView extends StatefulWidget {
  const ConfirmationView({Key? key}) : super(key: key);

  @override
  State<ConfirmationView> createState() => _ConfirmationViewState();
}

class _ConfirmationViewState extends State<ConfirmationView> {
  late String confirmationGreeting;
  late UserSignUpEntity user;

  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              HeaderComponent(
                title: confirmationGreeting,
                subtitle:
                    "Your super-awesome portfolio has been successfully submitted! The details below will be public within your community!",
              ),
              NotRequiredTextComponent(
                text: user.website,
                isLink: true,
              ),
              NotRequiredTextComponent(
                text: user.firstName,
              ),
              Text(
                user.email,
                style: CustomTextStyle.paragraph,
              )
            ],
          ),
          ButtonComponent(
            title: "Sign In",
            onTap: () {
              context.read<UserSignupProvider>().resetUser();
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/signup',
                (route) => false,
              );
            },
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    setUserConfirmationData(context);
    super.initState();
  }

  void setUserConfirmationData(BuildContext context) {
    UserSignUpEntity tempUser = context.read<UserSignupProvider>().user!;
    String greeting = "";

    if (tempUser.firstName == null || tempUser.firstName!.isEmpty) {
      greeting = "Hello";
    } else {
      greeting = "Hello, ${tempUser.firstName}!";
    }

    setState(() {
      confirmationGreeting = greeting;
      user = tempUser;
    });
  }
}
