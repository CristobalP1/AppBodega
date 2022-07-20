import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/order_all_list.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/providers/get_order_all_providers.dart';
import 'package:provider/provider.dart';

import '../../../../theme/app_theme.dart';
import '../../models/order_all_models.dart';

class OrderAllScreen extends StatelessWidget {
  const OrderAllScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<GetOrderAllProvider>(context);

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
                future: productProvider.getAllOrder(),
                builder: (_, AsyncSnapshot<List<OrderAll>?> snapshot) {
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
              DataColumn(label: Text('Numero Orden')),
              DataColumn(label: Text('Estado')),
              DataColumn(label: Text('Accion')),
            ],
            rows: data
                .map<DataRow>((e) => DataRow(cells: [
                      DataCell(Text(e.numeroPedido.toString())),
                      DataCell(Text(e.numeroPedido.toString())),
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
