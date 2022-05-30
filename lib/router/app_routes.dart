import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Providers/inactive_providers.dart';
import 'package:flutter_application_1/screens/screens.dart';

import '../utils/Constants.dart' as constants;

class ApppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    //Products Screen
    constants.homePage: (BuildContext context) => const HomeScreen(),
    constants.createCategory: (BuildContext context) =>
        const CreateCategoryScreen(),
    constants.createProduct: (BuildContext context) =>
        const CreateProductScreen(),
    constants.editCategory: (BuildContext context) =>
        const EditCategoryScreen(),
    constants.editProduct: (BuildContext context) => const EditProductScreen(),
    constants.infoProduct: (BuildContext context) => const InfoProductScreen(),
    constants.listFilterCategory: (BuildContext context) =>
        const CategoryFilterScrenn(),

    //Purchase Orders Screen
    constants.createOrder: (BuildContext context) => const CreateOrderScreen(),
    constants.viewState: (BuildContext context) => const ViewStateScreen(),
    constants.createOrderFinish: (BuildContext context) =>
        const CreateOrderFinishScreen(),

    //Providers Screen
    constants.activeProvider: (BuildContext context) =>
        const ActiveProvidersScreen(),
    constants.inactiveProviders: (BuildContext context) =>
        const InactiveProvidersScreen(),
    constants.createProvider: (BuildContext context) =>
        const CreateProviderScreen(),
    constants.seeProductsVendors: (BuildContext context) =>
        const SeeProductsVendorsScreen(),
    constants.seeVendors: (BuildContext context) => const SeeVendorsScreen(),
  };

  static Route<dynamic> onGenerateRouter(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
