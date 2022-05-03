import 'package:flipgrid_mobile/core/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  final String title;
  final String subtitle;
  final EdgeInsetsGeometry margin;

  const HeaderComponent({
    Key? key,
    required this.title,
    required this.subtitle,
    this.margin = const EdgeInsets.symmetric(vertical: 30),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: CustomTextStyle.title,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            subtitle,
            style: CustomTextStyle.subtitle,
          ),
        ],
      ),
    );
  }
}
