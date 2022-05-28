import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

class ApppRoutes {
  static const initialRoute = 'home_page';

  static Map<String, Widget Function(BuildContext)> routes = {
    //Products Screen
    'home_page': (BuildContext context) => const HomeScreen(),
    'create_category': (BuildContext context) => const CreateCategoryScreen(),
    'create_product': (BuildContext context) => const CreateProductScreen(),
    'edit_category': (BuildContext context) => const EditCategoryScreen(),
    'edit_product': (BuildContext context) => const EditProductScreen(),
    'info_product': (BuildContext context) => const InfoProductScreen(),

    //Purchase Orders Screen
    'create_order': (BuildContext context) => const CreateOrderScreen(),
    'view_state': (BuildContext context) => const ViewStateScreen(),
    'create_order_finish': (BuildContext context) =>
        const CreateOrderFinishScreen(),

    //Providers Screen
    'active_provider': (BuildContext context) => const ActiveProvidersScreen(),
  };

  static Route<dynamic> onGenerateRouter(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
