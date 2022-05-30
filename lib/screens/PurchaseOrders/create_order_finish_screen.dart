import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_application_1/widget/ListView/list_view_enter_products.dart';

import '../../widget/Buttons/button_save_canceller.dart';

class CreateOrderFinishScreen extends StatelessWidget {
  const CreateOrderFinishScreen({Key? key}) : super(key: key);
  static const String titulo = 'Crear Pedido';

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
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text(
                  'Soprole',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                  height: 20,
                  margin: const EdgeInsets.fromLTRB(25, 15, 0, 0),
                  child: Row(
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: Text('Productos:'),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 55),
                        child: Text('Ingrese Cantidad: '),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 55),
                        child: Text('Subtotal: '),
                      )
                    ],
                  )),
            ],
          ),
          Flexible(
            child: Container(
              height: 430,
              decoration: BoxDecoration(
                border: Border.all(color: AppTheme.primary, width: 2),
              ),
              margin: const EdgeInsets.only(left: 26, top: 10, right: 26),
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
              child: const ListViewProductsWidget(),
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 15, top: 5),
                alignment: Alignment.topLeft,
                child: TextButton.icon(
                  onPressed: () => {},
                  icon: const Icon(Icons.add),
                  label: const Text("Añadir Productos"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(children: [
                  Container(
                    padding: const EdgeInsets.only(left: 205),
                    child: const Text('TOTAL: ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 55),
                    child: const Text('35.000',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
      bottomSheet: const ButtonSaveCanceller(
        next: 'Crear Pedido',
        back: 'Cancelar',
        ruta: 'create_order_finish',
      ),
    );
  }
}
