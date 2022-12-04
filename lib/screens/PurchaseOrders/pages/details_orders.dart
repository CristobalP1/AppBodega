import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/global/environment.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/cafe_products.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/datails_order.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/pages/ProductsCriticsModule/create_order.dart';
import '../../../theme/app_theme.dart';
import 'package:http/http.dart' as http;

class DetailsOrdersScreen extends StatefulWidget {
  const DetailsOrdersScreen({Key? key}) : super(key: key);

  @override
  State<DetailsOrdersScreen> createState() => _DetailsOrdersScreenState();
}

class _DetailsOrdersScreenState extends State<DetailsOrdersScreen> {
  late Future<List<Producto>> _ordenDetails;

  Future<List<Producto>> _getOrdenDetails() async {
    final url = Uri.http(
      Environment.baseURL,
      'sucursales/sucursales_sucursal_list_rest/',
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
            const Text('Productos con stock critico 2'),
            const SizedBox(
              height: 50,
            ),
            FutureBuilder(
                future: _ordenDetails,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
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

    details.add(Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          DataTable(
              columns: const [
                DataColumn(label: Text('Producto')),
                DataColumn(label: Text('Stock')),
                DataColumn(label: Text('ProveedorR')),
              ],
              rows: data
                  .map<DataRow>((e) => DataRow(cells: [
                        DataCell(Center(child: Text(e.sucursal.toString()))),
                        DataCell(Center(child: Text(e.direccion.toString()))),
                        DataCell(TextButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CreateOrderProductScreen()))
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
