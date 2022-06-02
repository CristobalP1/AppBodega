import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';
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
      drawer: const ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }
}
