import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/cafe_products.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/datails_order.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/services/get_product.dart';
import 'package:http/http.dart' as http;

import '../services/get_products_critic.dart';

class GetCriticalProvider extends ChangeNotifier {
  List<Producto>? listado;

  Future<List<Producto>?> getProductsCritics() async {
    if (this.listado != null) {
      return listado;
    }

    var service = new GetCriticalService();
    this.listado = await service.getCritical();
    notifyListeners();
    return listado;
  }

  Future<List<Producto>?> refreshGetProductsCritics() async {
    var service = new GetCriticalService();
    this.listado = await service.getCritical();
    notifyListeners();
    return listado;
  }
}
