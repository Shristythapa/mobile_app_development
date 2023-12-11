import 'package:choose/app/theme/theme_data.dart';
import 'package:choose/routes/app_routes.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: getApplicationTheme(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter app',
        initialRoute: AppRoutes.splashScreen,
        routes: AppRoutes.getApplicationRoute());
  }
}
