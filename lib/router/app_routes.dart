import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/category_filter.dart';
import 'package:flutter_application_1/screens/create_table_products_screen.dart';
import 'package:flutter_application_1/screens/screens.dart';

class ApppRoutes {
  static const initialRoute = 'home_page';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home_page': (BuildContext context) => const HomeScreen(),
    'create_category': (BuildContext context) => const CreateCategoryScreen(),
    'create_product': (BuildContext context) => const CreateProductScreen(),
    'create_table_products': (BuildContext context) =>
        const CreateTableProductsScreen(),
    'edit_category': (BuildContext context) => const EditCategoryScreen(),
    'edit_product': (BuildContext context) => const EditProductScreen(),
    'info_product': (BuildContext context) => const InfoProductScreen(),
    'category_filter': (BuildContext context) => const CategoryFilter(),
  };

  static Route<dynamic> onGenerateRouter(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
