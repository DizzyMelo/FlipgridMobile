import 'package:flipgrid_mobile/core/theme/custom_text_style.dart';
import 'package:flipgrid_mobile/core/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NotRequiredTextComponent extends StatelessWidget {
  final String? text;
  final bool isLink;
  const NotRequiredTextComponent({
    Key? key,
    this.text,
    this.isLink = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (text == null || text!.isEmpty) {
      return Container();
    }
    if (isLink) {
      return InkWell(
        onTap: () async {
          if (!await launchUrl(Utils.validateUrl(text!))) {
            throw 'Could not launch $text';
          }
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 10),
          child: Text(
            text!,
            style: CustomTextStyle.link,
          ),
        ),
      );
    }
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Text(
        text!,
        style: CustomTextStyle.paragraph,
      ),
    );
  }
}
