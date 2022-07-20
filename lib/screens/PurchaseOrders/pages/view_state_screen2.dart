import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/ListView/list_check.dart';
import 'package:flutter_application_1/widget/Search/Search_bar.dart';

class OrderPurchaseOpcion2 extends StatelessWidget {
  const OrderPurchaseOpcion2({Key? key}) : super(key: key);

  static const String titulo = 'Ver Estado Pedido';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(titulo),
        leading: const Icon(Icons.menu_outlined),
        elevation: 15.5,
      ),
      body: Column(
        children: [
          Container(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: SearchInput()),
          Container(
              alignment: AlignmentDirectional.centerStart,
              padding: const EdgeInsets.fromLTRB(26, 10, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Numero Orden de compra:',
                  ),
                  Text(
                    '123323434',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Provedor:',
                  ),
                  Text(
                    'Column',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Estado del Pedido:',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                ],
              )),
          Flexible(
              child: Container(
                  margin: const EdgeInsets.fromLTRB(26, 20, 116, 90),
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: const ListCheckWidget())),
        ],
      ),
    );
  }
}
