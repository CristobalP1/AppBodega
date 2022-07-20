import 'package:flutter/material.dart';

import '../../../theme/app_theme.dart';

class CreateOrderProductScreen2 extends StatefulWidget {
  final nombre;
  final sku;
  final codigo;
  final precio;
  final costo;
  final stock;

  const CreateOrderProductScreen2({
    Key? key,
    this.nombre,
    this.sku,
    this.codigo,
    this.precio,
    this.costo,
    this.stock,
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
      body: Center(
        child: Column(
          children: [
            Text(widget.nombre),
            Text(widget.sku),
            Text(widget.stock),
            Text(widget.codigo),
            Text(widget.costo),
            Text(widget.precio),
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