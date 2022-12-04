import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/cafe_products.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/pages/ProductsCriticsModule/form_order.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/providers/get_critical_products.dart';
import 'package:provider/provider.dart';

import '../../../../theme/app_theme.dart';

class CreateOrderProductScreen extends StatefulWidget {
  const CreateOrderProductScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<CreateOrderProductScreen> createState() =>
      _CreateOrderProductScreenState();
}

class _CreateOrderProductScreenState extends State<CreateOrderProductScreen> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<GetCriticalProductsProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado De Productos'),
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
        margin: const EdgeInsets.fromLTRB(0, 20, 0, 00),
        child: Column(
          children: [
            FadeInLeft(
              duration: Duration(milliseconds: 500),
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                            fillColor: Colors.white,
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            hintText: 'buscar',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            ),
                            prefixIcon: Container(
                              padding: EdgeInsets.all(13),
                              child:
                                  Icon(Icons.search, color: AppTheme.primary),
                              width: 18,
                            )),
                      ),
                    ),
                  ],
                ),
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
                        DataCell(FlipInX(child: Text(e.nombre.toString()))),
                        DataCell(FlipInX(child: Text(e.sku.toString()))),
                        DataCell(FlipInX(
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
