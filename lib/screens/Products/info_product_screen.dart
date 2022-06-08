import 'package:flutter/material.dart';

class InfoProductScreen extends StatelessWidget {
  const InfoProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Producto'),
        backgroundColor: Colors.pinkAccent,
        leading: const Icon(Icons.menu_outlined),
        actions: [
          IconButton(
            icon: const Icon(Icons.attach_file_rounded),
            onPressed: () {
              print('holaa');
            },
          )
        ],
      ),

      //Body of the proyect
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Leche',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('23 Stock'),
                SizedBox(
                  height: 20,
                ),
                Text('3 Alert'),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Card(
              child: Column(children: const [
                ListTile(
                  title: Text(
                    "Informacion",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  'Categoria                        Refrigerados',
                  style: TextStyle(fontSize: 15),
                  textAlign: (TextAlign.right),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'SKU                              23231',
                  style: TextStyle(fontSize: 15),
                  textAlign: (TextAlign.right),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Codigo de barra                  780231223',
                  style: TextStyle(fontSize: 15),
                  textAlign: (TextAlign.right),
                ),
                SizedBox(
                  height: 12,
                ),
              ]),
            ),
            Card(
              child: Column(children: const [
                ListTile(
                  title: Text(
                    "Finanzas",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Text(
                  'Costo                            300',
                  style: TextStyle(fontSize: 15),
                  textAlign: (TextAlign.right),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Precio                           900',
                  style: TextStyle(fontSize: 15),
                  textAlign: (TextAlign.right),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Utilidad                         600',
                  style: TextStyle(fontSize: 15),
                  textAlign: (TextAlign.right),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Unidades Vendidas                120',
                  style: TextStyle(fontSize: 15),
                  textAlign: (TextAlign.right),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Ganancias Totales                72000',
                  style: TextStyle(fontSize: 15),
                  textAlign: (TextAlign.right),
                ),
                SizedBox(
                  height: 12,
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
