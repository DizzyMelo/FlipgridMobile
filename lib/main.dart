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
        child: const MyApp(),
      ),
    );
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppSettings.appName,
      themeMode: ThemeMode.system,
      theme: FlipgridTheme.light,
      darkTheme: FlipgridTheme.dark,
      initialRoute: '/signup',
      onGenerateRoute: (settings) => Routes.generateRoutes(settings),
    );
  }
}
