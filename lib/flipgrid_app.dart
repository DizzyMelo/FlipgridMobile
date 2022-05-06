import 'package:flutter/material.dart';

import 'core/navigation/route_generator.dart';
import 'core/navigation/routes.dart';
import 'core/settings/app_settings.dart';
import 'core/theme/theme.dart';

class FlipGridApp extends StatelessWidget {
  const FlipGridApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppSettings.appName,
      themeMode: ThemeMode.system,
      theme: FlipgridTheme.light,
      darkTheme: FlipgridTheme.dark,
      initialRoute: Routes.signupRoute.route,
      onGenerateRoute: RouteGenerator.generateRoutes,
    );
  }
}
