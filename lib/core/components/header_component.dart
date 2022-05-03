import 'package:flipgrid_mobile/core/theme/custom_text_style.dart';
import 'package:flutter/material.dart';

class HeaderComponent extends StatelessWidget {
  final String title;
  final String subtitle;

  const HeaderComponent({Key? key, required this.title, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
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
