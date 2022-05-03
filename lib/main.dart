import 'package:flipgrid_mobile/core/settings/app_settings.dart';
import 'package:flipgrid_mobile/core/theme/theme.dart';
import 'package:flipgrid_mobile/views/confirmation/confirmation_view.dart';
import 'package:flipgrid_mobile/views/signup/signup_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppSettings.appName,
      theme: FlipgridTheme.light,
      home: const SignupView(),
      initialRoute: '/signup',
      routes: {
        '/signup': (_) => const SignupView(),
        '/confirmation': (_) => const ConfirmationView(),
      },
    );
  }
}
