import 'dart:convert';
import 'package:flutter_application_1/screens/PurchaseOrders/models/order_all_list.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/global/environment.dart';

class GetOrderAllService {
  Future<List<OrderAll>> getOrderAll() async {
    final url =
        Uri.http(Environment.baseURL, 'ordencompra/order_purchase_all/');

    String basicAuth = 'Basic ' +
        base64Encode(
            utf8.encode('${Environment.apiUser}:${Environment.apiPass}'));
    final response = await http.get(url, headers: {'authorization': basicAuth});

    List<OrderAll> orderDetails = [];

    if (response.statusCode == 200) {
      return [
        for (final item in jsonDecode(response.body))
          OrderAll.fromJson(item.toString()),
      ];
/*       for (final item in jsonDecode(response.body)) OrderAll.fromJson(item);
      final listProductCritics = OrderAll.fromJson(response.body);
      orderDetails = listProductCritics as List<OrderAll>;
      return orderDetails; */
    }
    return [];
  }
}
