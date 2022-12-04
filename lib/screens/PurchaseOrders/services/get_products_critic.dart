import 'dart:convert';
import 'package:flutter_application_1/global/environment.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/cafe_products.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/datails_order.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/screens/PurchaseOrders/models/products_critics.dart';

class GetCriticalService {
  Future<List<Producto>> getCritical() async {
    final url = Uri.http(
      Environment.baseURL,
      'producto/productos_listar_bloqueados/',
    );

    String basicAuth = 'Basic ' +
        base64Encode(
            utf8.encode('${Environment.apiUser}:${Environment.apiPass}'));
    final response = await http.get(url, headers: {'authorization': basicAuth});

    List<Producto> orderDetails = [];

    if (response.statusCode == 200) {
      final listProductCritics = ListProduct.fromJson(response.body);
      orderDetails = listProductCritics.listado;
      return orderDetails;
    }
    print(orderDetails);
    return [];
  }
}
