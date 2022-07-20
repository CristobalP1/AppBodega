import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/global/environment.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/order_all_models.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/products_critics.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/pages/ProductsCriticsModule/create_order.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/pages/ProductsCriticsModule/info_orders.dart';
import '../../../theme/app_theme.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/order_all_list.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/pages/ProductsCriticsModule/info_orders.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/providers/get_order_all_providers.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../../../../global/environment.dart';
import '../../../../theme/app_theme.dart';

class CriticalProducts extends StatefulWidget {
  const CriticalProducts({Key? key}) : super(key: key);

  @override
  State<CriticalProducts> createState() => _CriticalProductsState();
}

class _CriticalProductsState extends State<CriticalProducts> {
  late Future<List<Producto1>> _ordenDetails;

  Future<List<Producto1>> _getOrdenDetails() async {
    final url = Uri.http(
      Environment.baseURL,
      'ordencompra/order_purchase_all/',
    );

    String basicAuth = 'Basic ' +
        base64Encode(
            utf8.encode('${Environment.apiUser}:${Environment.apiPass}'));
    final response = await http.get(url, headers: {'authorization': basicAuth});

    List<Producto1> orderDetails = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

/*       for (var i in jsonData) {
        orderDetails.add(Producto1(
          i["id"],
          i["cantidadOrden"],
          i["numeroPedido"],
          i["precioOrden"],
          i["producto"],
          i["proveedor"],
          i["vendedor"],
          i["estadoPedido"],
        ));
      } */
      return orderDetails;
    } else {
      throw Exception("fallo todo perro");
    }
  }

  @override
  void initState() {
    super.initState();
    _ordenDetails = _getOrdenDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: AppTheme.quaternary,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 00),
        child: Column(
          children: [
            const Text('Productos con stock critico Alerta!!!!'),
            const SizedBox(
              height: 50,
            ),
            FutureBuilder(
                future: _ordenDetails,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    print(snapshot.data);
                    return Flexible(
                      child: ListView(
                        children: _listDetails(snapshot.data),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    print(snapshot.error);
                    return const Text("Error");
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
          ],
        ),
      ),
    );
  }

  List<Widget> _listDetails(data) {
    List<Widget> details = [];

    details.add(Container(
      margin: const EdgeInsets.only(
        left: 7,
      ),
      child: Column(
        children: [
          DataTable(
              columns: const [
                DataColumn(label: Text('Producto')),
                DataColumn(label: Text('Stock')),
                DataColumn(label: Text('Accion')),
              ],
              rows: data
                  .map<DataRow>((e) => DataRow(cells: [
                        DataCell(Text(e.producto.toString())),
                        DataCell(Text(e.precioOrden.toString())),
                        DataCell(TextButton(
                          onPressed: () => {
                            /*   Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CreateOrderProductScreen2())) */
                          },
                          child: Text("Crear Orden"),
                        )),
                      ]))
                  .toList()),
          TextButton(onPressed: () => {}, child: Text("Siguiente"))
        ],
      ),
    ));

    return details;
  }
}
