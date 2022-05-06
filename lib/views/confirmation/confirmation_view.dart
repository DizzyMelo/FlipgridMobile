import 'package:flipgrid_mobile/controllers/confirmation_controller.dart';
import 'package:flipgrid_mobile/core/components/button_component.dart';
import 'package:flipgrid_mobile/core/components/header_component.dart';
import 'package:flipgrid_mobile/core/components/scaffold_component.dart';
import 'package:flipgrid_mobile/views/confirmation/components/not_required_text_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../core/providers/user_signup_provider.dart';

class ConfirmationView extends StatefulWidget {
  final ConfirmationControllerBase controller;

  const ConfirmationView({Key? key, required this.controller})
      : super(key: key);

  @override
  State<ConfirmationView> createState() => _ConfirmationViewState();
}

class _ConfirmationViewState extends State<ConfirmationView> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Observer(
            builder: (_) => Column(
              children: [
                HeaderComponent(
                  title: widget.controller.confirmationGreeting,
                  subtitle:
                      "Your super-awesome portfolio has been successfully submitted! The details below will be public within your community!",
                  margin: const EdgeInsets.only(top: 30, bottom: 10),
                ),
                NotRequiredTextComponent(
                  text: widget.controller.user.website,
                  isLink: true,
                ),
                NotRequiredTextComponent(
                  text: widget.controller.user.firstName,
                ),
                Text(
                  widget.controller.user.email,
                  style: Theme.of(context).textTheme.bodyText1,
                )
              ],
            ),
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
    widget.controller.setUserConfirmation(context);
    super.initState();
  }
}
