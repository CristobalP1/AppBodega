import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Constants.dart';

class InfoProductScreen extends StatefulWidget {
  final nombre;
  final sku;
  final codigo;
  final precio;
  final costo;
  final stock;

  const InfoProductScreen(
      {Key? key,
      this.nombre,
      this.sku,
      this.codigo,
      this.precio,
      this.costo,
      this.stock})
      : super(key: key);

  @override
  State<InfoProductScreen> createState() => _InfoProductScreenState();
}

class _InfoProductScreenState extends State<InfoProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),

      //Body of the proyect
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  widget.nombre,
                  style: TextStyle(fontSize: 105),
                  textAlign: (TextAlign.center),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 60,
                      height: 50,
                    ),
                    IconButton(
                      icon: const Icon(Icons.create_sharp),
                      color: const Color.fromARGB(255, 3, 4, 94),
                      onPressed: () {
                        Navigator.pushNamed(context, editProduct);
                      },
                      iconSize: 30,
                    ),
                  ],
                ),
              ],
            ),
            Card(
              child: Column(children: [
                const ListTile(
                  title: Text(
                    "Información",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      child: Text(
                        'Nombre del producto',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        widget.nombre,
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    SizedBox(
                      child: Text(
                        'Stock',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '23',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    SizedBox(
                      child: Text(
                        'Alert',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '3',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    SizedBox(
                      child: Text(
                        'SKU         ',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '  23231',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    SizedBox(
                      child: Text(
                        'Codigo de barra',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '780231223',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                  ],
                ),
                const Text(
                  '                                 ',
                  style: TextStyle(fontSize: 15),
                ),
              ]),
            ),
            Card(
              child: Column(children: [
                const ListTile(
                  title: Text(
                    "Finanzas",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    SizedBox(
                      child: Text(
                        'Costo',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '300',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    SizedBox(
                      child: Text(
                        'Precio',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '900',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    SizedBox(
                      child: Text(
                        'Utilidad',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '600  ',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    SizedBox(
                      child: Text(
                        'Unidades Vendidas',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '120                       ',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    SizedBox(
                      child: Text(
                        'Ganancias Totales',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                    SizedBox(
                      child: Text(
                        '72000                      ',
                        style: TextStyle(fontSize: 15),
                        textAlign: (TextAlign.center),
                      ),
                    ),
                  ],
                ),
                const Text(
                  '                                 ',
                  style: TextStyle(fontSize: 15),
                ),
              ]),
            ),
            Text(
              widget.nombre,
              style: TextStyle(fontSize: 15),
              textAlign: (TextAlign.center),
            ),
            Text(
              widget.codigo,
              style: TextStyle(fontSize: 15),
              textAlign: (TextAlign.center),
            ),
            Text(
              widget.costo,
              style: TextStyle(fontSize: 15),
              textAlign: (TextAlign.center),
            ),
            Text(
              widget.precio,
              style: TextStyle(fontSize: 15),
              textAlign: (TextAlign.center),
            ),
            Text(
              widget.stock,
              style: TextStyle(fontSize: 15),
              textAlign: (TextAlign.center),
            ),
            Text(
              widget.sku,
              style: TextStyle(fontSize: 15),
              textAlign: (TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
