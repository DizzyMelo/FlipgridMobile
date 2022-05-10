import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

import '../../domain/validators/validator.dart';

// ignore: must_be_immutable
class CustomTextfieldComponent extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType inputType;
  final TextCapitalization capitalization;
  final TextInputAction inputAction;
  final IValidator validator;
  final bool isSecuredField, isObscure;
  final Function()? toggleSecuredFied;

  CustomTextfieldComponent({
    Key? key,
    required this.label,
    required this.controller,
    this.inputType = TextInputType.text,
    this.capitalization = TextCapitalization.none,
    required this.validator,
    this.inputAction = TextInputAction.next,
    this.isSecuredField = false,
    this.toggleSecuredFied,
    this.isObscure = false,
  }) : super(key: key);

  InputBorder border = OutlineInputBorder(
    borderSide: BorderSide(width: 1, color: Colors.grey[400]!),
    borderRadius: BorderRadius.circular(10),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: TextFormField(
        obscureText: isObscure,
        textInputAction: inputAction,
        validator: validator.valite,
        style: Theme.of(context).textTheme.caption,
        controller: controller,
        keyboardType: inputType,
        textCapitalization: capitalization,
        decoration: InputDecoration(
          labelText: label,
          errorMaxLines: 7,
          border: border,
          disabledBorder: border,
          enabledBorder: border,
          suffixIcon: isSecuredField
              ? IconButton(
                  onPressed: toggleSecuredFied,
                  icon: Icon(isObscure ? LineIcons.eye : LineIcons.eyeSlash),
                  color: Theme.of(context).primaryColor,
                )
              : null,
        ),
      ),
    );
  }
}
