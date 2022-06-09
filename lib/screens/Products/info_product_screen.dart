import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Constants.dart';

class InfoProductScreen extends StatelessWidget {
  const InfoProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.attach_file_rounded),
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
                const Text(
                  'Leche',
                  style: TextStyle(fontSize: 25),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.create_sharp),
                      color: const Color.fromARGB(255, 3, 4, 94),
                      onPressed: () {
                        Navigator.pushNamed(context, editProduct);
                      },
                      iconSize: 30,
                    ),
                    const Icon(
                      Icons.block,
                      color: Colors.red,
                      size: 30.0,
                    ),
                  ],
                ),
              ],
            ),
            Card(
              child: Column(children: [
                const ListTile(
                  title: Text(
                    "Informacion",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'Categoria',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                    Text(
                      'Refrigerados',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'Stock',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '23',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'Alert',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '3',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'SKU',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '23231',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'Codigo de barra',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '780231223',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
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
                    Text(
                      'Costo',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '300',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'Precio',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '900',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'Utilidad',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '600',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'Unidades Vendidas',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '120',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: const [
                    Text(
                      'Ganancias Totales',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      '72000',
                      style: TextStyle(fontSize: 15),
                      textAlign: (TextAlign.center),
                    ),
                  ],
                ),
                const Text(
                  '                                 ',
                  style: TextStyle(fontSize: 15),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
