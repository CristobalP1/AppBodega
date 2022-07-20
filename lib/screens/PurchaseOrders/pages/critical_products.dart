import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/global/environment.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/products_critics.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/pages/ProductsCriticsModule/create_order.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/pages/create_order2.dart';
import '../../../theme/app_theme.dart';
import 'package:http/http.dart' as http;

class CriticalProducts extends StatefulWidget {
  const CriticalProducts({Key? key}) : super(key: key);

  @override
  State<CriticalProducts> createState() => _CriticalProductsState();
}

class _CriticalProductsState extends State<CriticalProducts> {
  late Future<List<Listado>> _criticalProducts;

  Future<List<Listado>> _getCriticalProducts() async {
    final url = Uri.http(
      Environment.baseURL,
      'productos/productos_producto_listar/',
    );

    String basicAuth = 'Basic ' +
        base64Encode(
            utf8.encode('${Environment.apiUser}:${Environment.apiPass}'));
    final response = await http.get(url, headers: {'authorization': basicAuth});
    List<Listado> listProductsCritical = [];

    if (response.statusCode == 200) {
      final listProductCritics = ListProductsCritic.fromJson(response.body);
      listProductsCritical = listProductCritics.listado;
      return listProductsCritical;
    }
    return [];
  }

  @override
  void initState() {
    super.initState();
    _criticalProducts = _getCriticalProducts();
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
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 40),
        child: Column(
          children: [
            const Text('Productos con stock critico'),
            const SizedBox(
              height: 50,
            ),
            FutureBuilder(
                future: _criticalProducts,
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
                        DataCell(Text(e.nombre.toString())),
                        DataCell(Text(e.sku.toString())),
                        DataCell(TextButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CreateOrderProductScreen2()))
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
