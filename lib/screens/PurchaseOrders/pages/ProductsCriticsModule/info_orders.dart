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
        title: const Text('Productos acaaa'),
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
      body: Center(
        child: Column(
          children: [
            Text(widget.id),
            Text(widget.numeroPedido),
            Text(widget.precioOrden),
            Text(widget.cantidadOrden),
            Text(widget.proveedor),
            Text(widget.vendedor),
            Text(widget.estadoPedido)
          ],
        ),
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