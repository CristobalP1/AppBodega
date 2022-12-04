import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/cafe_products.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/pages/ProductsCriticsModule/form_order.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/providers/get_critical_products.dart';
import 'package:provider/provider.dart';

import '../../../../theme/app_theme.dart';

class ProductsCritics23 extends StatefulWidget {
  const ProductsCritics23({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductsCritics23> createState() => _ProductsCritics23State();
}

class _ProductsCritics23State extends State<ProductsCritics23> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<GetCriticalProductsProvider>(context);

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
            const Text(
              'Productos Con Stock Critico',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 29, 0, 82),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            FutureBuilder(
                future: productProvider.getProductsCritics(),
                builder: (_, AsyncSnapshot<List<Producto>?> snapshot) {
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
                DataColumn(label: Text('Accion')),
              ],
              rows: data
                  .map<DataRow>((e) => DataRow(cells: [
                        DataCell(FlipInY(child: Text(e.nombre.toString()))),
                        DataCell(FlipInY(child: Text(e.sku.toString()))),
                        DataCell(FlipInY(
                          child: TextButton(
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FormOrder23(
                                            nombre: e.nombre.toString(),
                                            stock: e.stock.toString(),
                                          )))
                            },
                            child: Text("Crear Orden"),
                          ),
                        )),
                      ]))
                  .toList())
        ],
      ),
    ));

    return details;
  }
}
