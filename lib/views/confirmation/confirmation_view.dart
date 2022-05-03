import 'package:flipgrid_mobile/core/components/button_component.dart';
import 'package:flipgrid_mobile/core/components/header_component.dart';
import 'package:flipgrid_mobile/core/components/scaffold_component.dart';
import 'package:flutter/material.dart';

class ConfirmationView extends StatefulWidget {
  final String? name;

  const ConfirmationView({Key? key, this.name}) : super(key: key);

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
          Column(
            children: const [
              HeaderComponent(
                  title: "Hello",
                  subtitle:
                      "Your super-awesome portfolio has been successfully submitted! The details below will be public within your community!")
            ],
          ),
          ButtonComponent(
            title: "Sign In",
            onTap: () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/signup',
              (route) => false,
            ),
          )
        ],
      ),
    );
  }
}
