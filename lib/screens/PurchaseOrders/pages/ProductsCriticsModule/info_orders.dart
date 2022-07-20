import 'package:flutter/material.dart';

import '../../../../theme/app_theme.dart';

class CreateOrderProductScreen2 extends StatefulWidget {
  final id;
  final numeroPedido;
  final precioOrden;
  final cantidadOrden;
  final proveedor;
  final vendedor;
  final producto;
  final estadoPedido;

  const CreateOrderProductScreen2({
    Key? key,
    this.id,
    this.numeroPedido,
    this.precioOrden,
    this.cantidadOrden,
    this.proveedor,
    this.vendedor,
    this.producto,
    this.estadoPedido,
  }) : super(key: key);

  @override
  State<CreateOrderProductScreen2> createState() =>
      _CreateOrderProductScreen2State();
}

class _CreateOrderProductScreen2State extends State<CreateOrderProductScreen2> {
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
      body:ListView(
          children: [
            ListTile(
              
              leading: Icon(Icons.toll),
              title: Text("ID:"),
              subtitle:Text(widget.id),
            ),
            ListTile(
              
              leading: Icon(Icons.scatter_plot),
              title: Text("Numero Pedido:"),
              subtitle:Text(widget.numeroPedido),
            ),
            ListTile(
              
              leading: Icon(Icons.attach_money),
              title: Text("Precio:"),
              subtitle:Text(widget.precioOrden),
            ),
            ListTile(
              
              leading: Icon(Icons.production_quantity_limits),
              title: Text("Cantidad:"),
              subtitle:Text(widget.cantidadOrden),
            ),
            ListTile(
              
              leading: Icon(Icons.person),
              title: Text("Proveedor:"),
              subtitle:Text(widget.proveedor),
            ),
            ListTile(
              
              leading: Icon(Icons.person_outline),
              title: Text("Vendedor:"),
              subtitle:Text(widget.vendedor),
            ),
            ListTile(
              
              leading: Icon(Icons.donut_large),
              title: Text("Estado del Pedido:"),
              subtitle:Text(widget.estadoPedido),
            ),
          ],
        ),
    );
  }
}


/*  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        CreateOrderProductScreen(
                                          nombre: e.nombre.toString(),
                                          sku: e.sku.toString(),
                                          precio: e.precio.toString(),
                                          stock: e.stock.toString(),
                                          codigo: e.codigo.toString(),
                                          costo: e.costo.toString(),
                                        ))) */