import 'package:flutter/material.dart';

import '../../../../theme/app_theme.dart';

class FormOrder23 extends StatefulWidget {
  final nombre;
  final stock;

  const FormOrder23({
    Key? key,
    this.nombre,
    this.stock,
  }) : super(key: key);

  @override
  State<FormOrder23> createState() => _FormOrder23State();
}

class _FormOrder23State extends State<FormOrder23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informacion de Orden'),
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
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.toll),
            title: Text("ID:"),
            subtitle: Text(widget.nombre),
          ),
          ListTile(
            leading: Icon(Icons.scatter_plot),
            title: Text("Numero Pedido:"),
            subtitle: Text(widget.stock),
          ),
          ListTile(
            leading: Icon(Icons.attach_money),
            title: Text("Precio:"),
            subtitle: Text("widget.precioOrden"),
          ),
          ListTile(
            leading: Icon(Icons.production_quantity_limits),
            title: Text("Cantidad:"),
            subtitle: Text("widget.cantidadOrden"),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Proveedor:"),
            subtitle: Text("widget.proveedor"),
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: Text("Vendedor:"),
            subtitle: Text("widget.vendedor"),
          ),
          ListTile(
            leading: Icon(Icons.donut_large),
            title: Text("Estado del Pedido:"),
            subtitle: Text("widget.estadoPedid"),
          ),
        ],
      ),
    );
  }
}
