import 'package:flutter/material.dart';
import 'package:flutter_application_1/router/app_routes.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/providers/get_critical_products.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/providers/get_order_all_providers.dart';
import 'package:flutter_application_1/Providers/list_category_provider.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:provider/provider.dart';
import 'theme/app_theme.dart';

void main() => runApp(const ProviderState());

class ProviderState extends StatelessWidget {
  const ProviderState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ListCategoryProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => GetCriticalProductsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => GetOrderAllProvider(),
        )
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeData,
      initialRoute: loginUser,
      routes: ApppRoutes.routes,
    );
/*         debugShowCheckedModeBanner: false, home: HomeScreen()); */
  }
}
