import 'package:flutter_application_1/screens/PurchaseOrders/models/order_all_list.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/order_all_models.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/services/get_orders_all.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';

class GetOrderAllProvider extends ChangeNotifier {
  List<OrderAll>? listado;

  Future<List<OrderAll>?> getAllOrder() async {
    if (this.listado != null) {
      return listado;
    }

    var service = new GetOrderAllService();
    this.listado = await service.getOrderAll();
    notifyListeners();
    return listado;
  }

  Future<List<OrderAll>?> refreshGetProductsCritics() async {
    var service = new GetOrderAllService();
    this.listado = await service.getOrderAll();
    notifyListeners();
    return listado;
  }
}
