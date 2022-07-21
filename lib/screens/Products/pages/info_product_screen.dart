import 'package:animate_do/animate_do.dart';
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
        title: const Text('Info Productos'),
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
                  style: const TextStyle(
                      fontSize: 30, color: Color.fromRGBO(3, 4, 94, 1)),
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
            FadeInRightBig(
              duration: Duration(milliseconds: 600),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: const EdgeInsets.all(15),
                elevation: 8,
                child: Column(children: [
                  const ListTile(
                    title: Text(
                      "Información",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromRGBO(3, 4, 94, 1)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        child: Text(
                          'Codigo Barra',
                          style: TextStyle(fontSize: 15),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          widget.codigo,
                          style: const TextStyle(fontSize: 15),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        child: Text(
                          'Stock',
                          style: TextStyle(fontSize: 15),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          widget.stock,
                          style: const TextStyle(fontSize: 15),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        child: Text(
                          'SKU         ',
                          style: TextStyle(fontSize: 15),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          widget.sku,
                          style: const TextStyle(fontSize: 15),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  const Text(
                    ' ',
                    style: TextStyle(fontSize: 15),
                  ),
                ]),
              ),
            ),
            FadeInLeftBig(
              duration: Duration(milliseconds: 600),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                margin: const EdgeInsets.all(15),
                elevation: 8,
                child: Column(children: [
                  const ListTile(
                    title: Text(
                      "Finanzas",
                      style: TextStyle(
                          fontSize: 20, color: Color.fromRGBO(3, 4, 94, 1)),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        child: Text(
                          'Precio',
                          style: TextStyle(fontSize: 15),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          widget.precio,
                          style: const TextStyle(fontSize: 15),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(
                        child: Text(
                          'Costo',
                          style: TextStyle(fontSize: 15),
                          textAlign: (TextAlign.center),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          widget.costo,
                          style: const TextStyle(fontSize: 15),
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
            ),
          ],
        ),
      ),
    );
  }
}
