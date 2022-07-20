import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/cafe_products.dart';
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
                      DataCell(Text(e.sucursal.toString())),
                      DataCell(Text(e.direccion.toString())),
                      DataCell(TextButton(
                        onPressed: () => {},
                        child: Text("Crear Orden"),
                      )),
                    ]))
                .toList())
      ],
    ),
  ));

  return details;
}
