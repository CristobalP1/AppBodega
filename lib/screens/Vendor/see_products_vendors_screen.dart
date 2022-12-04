import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

List<Map> productos = [
  {'id': 1, 'name': 'Leche', 'precio': 990},
  {'id': 2, 'name': 'Jamon', 'precio': 990},
  {'id': 3, 'name': 'Pan', 'precio': 990},
  {'id': 4, 'name': 'Naranja', 'precio': 990},
  {'id': 5, 'name': 'Leche', 'precio': 990},
  {'id': 6, 'name': 'Pan', 'precio': 990},
];

class SeeProductsVendorsScreen extends StatelessWidget {
  const SeeProductsVendorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 153, 255),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SeeVendorsScreen()));
          },
        ),
        title: const Text(
          'Proveedor Colun',
          style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 0, 0, 0)),
        ), //Define el titulo del appbar
        elevation: 15.5,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Color.fromARGB(255, 0, 0, 0),
              size: 30,
            ),
            onPressed: () {
              // do something
            },
          )
        ], //define la elevación es un valor float
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          DataTable(
              headingRowColor:
                  MaterialStateColor.resolveWith((states) => Colors.grey),
              border: TableBorder.all(color: Colors.black),
              dataTextStyle: const TextStyle(fontSize: 17, color: Colors.black),
              columns: const [
                DataColumn(label: Text('Producto')),
                DataColumn(label: Text('Precio'), numeric: true)
              ],
              rows: [
                ...productos
                    .map(
                      (e) => DataRow(cells: [
                        DataCell(Text(e['name'].toString())),
                        DataCell(Text(e['precio'].toString()))
                      ]),
                    )
                    .toList()
              ])
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.arrow_back, color: Colors.white),
        backgroundColor: Colors.black,
      ),
    );
  }
}
