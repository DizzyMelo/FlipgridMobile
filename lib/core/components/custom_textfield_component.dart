import 'package:flipgrid_mobile/core/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class CustomTextfieldComponent extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType inputType;
  final TextCapitalization capitalization;
  CustomTextfieldComponent({
    Key? key,
    required this.label,
    required this.controller,
    this.inputType = TextInputType.text,
    this.capitalization = TextCapitalization.none,
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
        style: CustomTextStyle.textfield,
        controller: controller,
        keyboardType: inputType,
        textCapitalization: capitalization,
        decoration: InputDecoration(
            labelText: label,
            border: border,
            disabledBorder: border,
            enabledBorder: border),
      ),
    );
  }
}
