import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: ApppRoutes.initialRoute,
        routes: ApppRoutes.routes,
        onGenerateRoute: ApppRoutes.onGenerateRouter);
/*         debugShowCheckedModeBanner: false, home: HomeScreen()); */
  }
}
