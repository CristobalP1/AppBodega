import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

class ApppRoutes {
  static const initialRoute = 'create_category';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home_page': (BuildContext context) => const HomeScreen(),
    'create_category': (BuildContext context) => const CreateCategoryScreen(),
    'create_product': (BuildContext context) => const CreateProductScreen(),
    'edit_category': (BuildContext context) => const EditCategoryScreen(),
    'edit_product': (BuildContext context) => const EditProductScreen(),
    'info_product': (BuildContext context) => const InfoProductScreen(),
  };

  static Route<dynamic> onGenerateRouter(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
