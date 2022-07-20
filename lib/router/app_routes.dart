import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Providers/inactive_providers.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/pages/critical_products.dart';
import 'package:flutter_application_1/screens/screens.dart';

import '../utils/Constants.dart' as constants;

class ApppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    //Home Screen
    constants.homePage: (BuildContext context) => const HomeScreen(),
    constants.filterHome: (BuildContext context) => const FilterHomeScreen(),

    //Products Screen
    constants.createProduct: (BuildContext context) =>
        const CreateProductScreen(),
    constants.editProduct: (BuildContext context) => const EditProductScreen(),
    constants.infoProduct: (BuildContext context) => const InfoProductScreen(),
    constants.productsLocked: (BuildContext context) => const ProductsBlocked(),

    //Category Screen
    constants.createCategory: (BuildContext context) =>
        const CreateCategoryScreen(),
    constants.editCategory: (BuildContext context) =>
        const EditCategoryScreen(),
    constants.lockedCategory: (BuildContext context) =>
        const CategoryLockedScreen(),

    //Purchase Orders Screen
    constants.createOrder: (BuildContext context) => const CreateOrderScreen(),
    constants.viewState: (BuildContext context) => const OrderPurchaseOpcion(),
    constants.createOrderFinish: (BuildContext context) =>
        const CreateOrderFinishScreen(),
    constants.criticalProducts: (BuildContext context) =>
        const CreateOrderProductScreen(),
    constants.detailsOrder: (BuildContext context) =>
        const DetailsOrdersScreen(),

    //Providers Screen
    constants.activeProvider: (BuildContext context) =>
        const ActiveProvidersScreen(),
    constants.inactiveProviders: (BuildContext context) =>
        const InactiveProvidersScreen(),
    constants.createProvider: (BuildContext context) =>
        const CreateProviderScreen(),

    //Vendor Screen
    constants.seeProductsVendors: (BuildContext context) =>
        const SeeProductsVendorsScreen(),
    constants.seeVendors: (BuildContext context) => const SeeVendorsScreen(),
    constants.vendor: (BuildContext context) => const VendorScreen(),
    constants.createVendor: (BuildContext context) =>
        const CreateVendorScreen(),

    //login
    constants.loginUser: (BuildContext context) => const LoginScreen(),
  };

  static Route<dynamic> onGenerateRouter(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const HomeScreen(),
    );
  }
}
