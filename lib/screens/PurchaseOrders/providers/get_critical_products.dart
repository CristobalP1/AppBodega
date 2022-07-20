import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/cafe_products.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/datails_order.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/services/get_product.dart';
import 'package:http/http.dart' as http;

class GetCriticalProductsProvider extends ChangeNotifier {
  List<Producto>? listado;

  Future<List<Producto>?> getProductsCritics() async {
    if (this.listado != null) {
      return listado;
    }

    var service = new GetCriticalProductsService();
    this.listado = await service.getCriticalProducts();
    notifyListeners();
    return listado;
  }

  Future<List<Producto>?> refreshGetProductsCritics() async {
    var service = new GetCriticalProductsService();
    this.listado = await service.getCriticalProducts();
    notifyListeners();
    return listado;
  }

  /* List<Listado>? listado;

  Future<List<Listado>?> getProductsCritics() async {
    if (this.listado != null) {
      return listado;
    }

    var service = new GetCriticalProductsService();
    this.listado = await service.getCriticalProducts();
    notifyListeners();
    return listado;
  }

  Future<List<Listado>?> refreshGetProductsCritics() async {
    var service = new GetCriticalProductsService();
    this.listado = await service.getCriticalProducts();
    notifyListeners();
    return listado;
  } */
}
