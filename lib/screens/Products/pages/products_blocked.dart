import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/cafe_products.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/providers/get_critical_products.dart';
import 'package:flutter_application_1/screens/screens.dart';
import 'package:provider/provider.dart';

import '../../../../theme/app_theme.dart';

class ProductsBlocked extends StatefulWidget {
  const ProductsBlocked({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductsBlocked> createState() => _ProductsBlockedState();
}

class _ProductsBlockedState extends State<ProductsBlocked> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<GetCriticalProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos Bloqueados'),
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
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 00),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            const Text(
              'Lista de productos Bloqueados',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 29, 0, 82),
              ),
            ),
            SizedBox(
              height: 20,
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
                DataColumn(label: Text('Info')),
              ],
              rows: data
                  .map<DataRow>((e) => DataRow(cells: [
                        DataCell(ZoomIn(
                            duration: Duration(milliseconds: 400),
                            child: Text(e.nombre.toString()))),
                        DataCell(ZoomIn(
                            duration: Duration(milliseconds: 400),
                            child: Text(e.sku.toString()))),
                        DataCell(ZoomIn(
                          duration: Duration(milliseconds: 400),
                          child: TextButton(
                            onPressed: () => {
                              {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => InfoProductScreen(
                                              nombre: e.nombre.toString(),
                                              sku: e.sku.toString(),
                                              codigo: e.codigo.toString(),
                                              precio: e.precio.toString(),
                                              costo: e.costo.toString(),
                                              stock: e.stock.toString(),
                                            )))
                              }
                            },
                            child: Text("Ver Mas"),
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
