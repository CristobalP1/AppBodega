import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_application_1/widget/ListView/list_view_check.dart';
import 'package:flutter_application_1/widget/Buttons/button_save_canceller.dart';

import '../../widget/Buttons/drop_down_button.dart';

class CreateOrderScreen extends StatelessWidget {
  const CreateOrderScreen({Key? key}) : super(key: key);
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
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.fromLTRB(30, 30, 0, 0),
            child: Column(
              children: const [
                Text('Nombre Proveedor:'),
                SizedBox(
                  height: 12,
                ),
                DropDownButton(),
                SizedBox(
                  height: 50,
                ),
                Text('Productos: ')
              ],
            ),
          ),
          /* Container(
              padding: const EdgeInsets.fromLTRB(26, 5, 0, 0),
              color: Colors.red,
              child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Nombre Proveedor:'))),
          Container(
              color: Colors.blue,
              padding: const EdgeInsets.fromLTRB(26, 0, 0, 0),
              child: const Align(
                  alignment: Alignment.centerLeft, child: DropDownButton())),
          Container(
            child: const Align(
                alignment: Alignment.bottomLeft, child: Text('Productos:')),
            color: Colors.yellow,
            padding: const EdgeInsets.fromLTRB(26, 40, 0, 0),
          ), */
          Flexible(
            child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppTheme.primary, width: 2),
                ),
                margin: const EdgeInsets.fromLTRB(26, 20, 26, 90),
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: const ListViewCheckWidget()),
          )
        ],
      ),
      bottomSheet: const ButtonSaveCanceller(
        next: 'Siguiente',
        back: 'Cancelar',
        ruta: 'create_order_finish',
      ),
    );
  }
}
