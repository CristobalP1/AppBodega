import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/app_routes.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      initialRoute: homePage,
      routes: ApppRoutes.routes,
    );
/*         debugShowCheckedModeBanner: false, home: HomeScreen()); */
  }
}
