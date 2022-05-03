import 'package:flutter/material.dart';

class ScaffoldComponent extends StatelessWidget {
  final Widget child;
  const ScaffoldComponent({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: child,
        ),
      ),
    );
  }
}
