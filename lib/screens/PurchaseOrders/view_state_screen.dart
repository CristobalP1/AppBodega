import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/ListView/list_check.dart';

class ViewStateScreen extends StatelessWidget {
  const ViewStateScreen({Key? key}) : super(key: key);

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
              alignment: AlignmentDirectional.centerStart,
              padding: const EdgeInsets.fromLTRB(26, 25, 0, 0),
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

/*               
          Container(
              padding: const EdgeInsets.fromLTRB(26, 25, 0, 0),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Numero Orden de compra:',
                  ))),
          Container(
              padding: const EdgeInsets.fromLTRB(26, 5, 0, 0),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '234234',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))),
          Container(
              padding: const EdgeInsets.fromLTRB(26, 30, 0, 0),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Nombre Proveedor:'))),
          Container(
              padding: const EdgeInsets.fromLTRB(26, 5, 0, 0),
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Soprole',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ))), */
          Flexible(
              child: Container(
                  margin: const EdgeInsets.fromLTRB(26, 20, 116, 90),
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: const ListCheckWidget())),
          /* Row(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.fromLTRB(60, 40, 0, 0),
                color: Colors.red,
                child: const Icon(Icons.check, color: Colors.green),
              ),
              Container(
                child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Pendiente de Envio')),
                color: Colors.yellow,
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.fromLTRB(60, 40, 0, 0),
                color: Colors.red,
                child: const Icon(Icons.check, color: Colors.green),
              ),
              Container(
                child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Enviado a Proveedor')),
                color: Colors.yellow,
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.fromLTRB(60, 40, 0, 0),
                color: Colors.red,
                child: const Icon(Icons.check, color: Colors.green),
              ),
              Container(
                child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Recibido en Bodega')),
                color: Colors.yellow,
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.fromLTRB(60, 40, 0, 0),
                color: Colors.red,
                child: const Icon(Icons.check, color: Colors.green),
              ),
              Container(
                child: const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('Pedido Finalizado')),
                color: Colors.yellow,
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
              ),
            ],
          ), */
        ],
      ),
    );
  }
}
