import 'package:flipgrid_mobile/core/components/loading_component.dart';
import 'package:flutter/material.dart';

class ButtonComponent extends StatelessWidget {
  final String title;
  final bool isLoading;
  final double height;
  final Function()? onTap;
  const ButtonComponent({
    Key? key,
    required this.title,
    this.onTap,
    this.isLoading = false,
    this.height = 60,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.grey[400],
        ),
        height: height,
        width: double.infinity,
        alignment: Alignment.center,
        child: const LoadingComponent(),
      );
    }
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                Theme.of(context).primaryColor,
                Theme.of(context).primaryColorDark,
              ],
            ),
          ),
          height: height,
          width: double.infinity,
          alignment: Alignment.center,
          child: Text(
            title,
            style: Theme.of(context).textTheme.button,
          ),
        ),
      ),
    );
  }
}
