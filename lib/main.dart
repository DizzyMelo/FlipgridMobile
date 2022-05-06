import 'package:flipgrid_mobile/core/navigation/route_generator.dart';
import 'package:flipgrid_mobile/core/navigation/routes.dart';
import 'package:flipgrid_mobile/core/providers/user_signup_provider.dart';
import 'package:flipgrid_mobile/core/settings/app_settings.dart';
import 'package:flipgrid_mobile/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => UserSignupProvider()),
        ],
        child: const FlipGridApp(),
      ),
    );
  });
}

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
      onGenerateRoute: (settings) => RouteGenerator.generateRoutes(settings),
    );
  }
}
