import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/order_all_list.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/pages/ProductsCriticsModule/info_orders.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/providers/get_order_all_providers.dart';
import 'package:provider/provider.dart';
import 'package:http/http.dart' as http;
import '../../../../global/environment.dart';
import '../../../../theme/app_theme.dart';
import '../../models/order_all_models.dart';

class OrderAllScreen extends StatefulWidget {
  const OrderAllScreen({Key? key}) : super(key: key);

  @override
  State<OrderAllScreen> createState() => _OrderAllScreenState();
}

class _OrderAllScreenState extends State<OrderAllScreen> {
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
      final lista = List.from(jsonDecode(response.body));

      lista.forEach((element) {
        final Producto1 orderList = Producto1.fromJson(element);
        orderDetails.add(orderList);
      });
      print(orderDetails);
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
        title: const Text('Ordenes De Compra'),
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
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Todas Las Ordenes de Compra',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: AppTheme.primary,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            FutureBuilder(
                future: _ordenDetails,
                builder: (context, AsyncSnapshot<List<Producto1>?> snapshot) {
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
                DataColumn(label: Text('Proveedor')),
                DataColumn(label: Text('Accion')),
              ],
              rows: data
                  .map<DataRow>((e) => DataRow(cells: [
                        DataCell(Text(e.producto.toString())),
                        DataCell(Text(e.vendedor.toString())),
                        DataCell(TextButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CreateOrderProductScreen2(
                                          id: e.id.toString(),
                                          numeroPedido:
                                              e.numeroPedido.toString(),
                                          precioOrden: e.precioOrden.toString(),
                                          cantidadOrden:
                                              e.cantidadOrden.toString(),
                                          proveedor: e.proveedor.toString(),
                                          vendedor: e.vendedor.toString(),
                                          producto: e.producto.toString(),
                                          estadoPedido:
                                              e.estadoPedido.toString(),
                                        )))
                          },
                          child: Text("Crear Orden"),
                        )),
                      ]))
                  .toList())
        ],
      ),
    ));

    return details;
  }
}
