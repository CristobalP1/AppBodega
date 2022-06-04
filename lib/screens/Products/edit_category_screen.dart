import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';
import 'package:flutter_application_1/widget/Inputs/input_field.dart';

import '../../widget/ListView/list_view_products.dart';

class EditCategoryScreen extends StatefulWidget {
  final name;

  const EditCategoryScreen({Key? key, this.name}) : super(key: key);

  @override
  State<EditCategoryScreen> createState() => _EditCategoryScreenState();
}

class _EditCategoryScreenState extends State<EditCategoryScreen> {
  List productos = [
    {"nombre": 'leche soprole', 'stock': 23},
    {"nombre": 'leche acuenta', 'stock': 23},
    {"nombre": 'leche lider', 'stock': 23},
  ];
  List<String> listas = [];
  bool change = false;
  TextEditingController controller = TextEditingController();
  String getvalue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.attach_file_rounded),
            onPressed: () {
              print('holaa');
            },
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: [
                const Text(
                  'Categoria: ',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(change == false ? widget.name : getvalue,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.w500)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InputField(
              controller: controller,
              hint: 'Renombrar Categoria',
            ),
            TextButton.icon(
              onPressed: () => {
                getvalue = controller.text,
                change = true,
                controller.text = '',
                print(productos[1]),
                setState(() {})
              },
              icon: const Icon(Icons.add),
              label: const Text("Cambiar Nombre"),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Lista de Productos',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 50,
            ),
            const Flexible(child: ListViewProductsWidget()),
            /* Flexible(
              child: Container(
                margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: ListView.builder(
                  itemCount: productos.length,
                  itemBuilder: (context, position) {
                    return Tarea2(productos[position]);
                  },
                  //children: listas.map((elem) => Tarea(elem)).toList(),
                ),
              ),
            ), */
            const SizedBox(
              height: 40,
            ),
            /* Test(), */
          ],
        ),
      ),
      drawer: const ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }
}

class Tarea2 extends StatelessWidget {
  final String tarea;
  Tarea2(this.tarea);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Text(tarea),
      ),
    );
  }
}

class Test extends StatelessWidget {
  final url = Uri.parse(
      "http://157.230.213.232:8000/productos/productos_categoria_listar/");

/*   Map<String, String> requestHeaders = {
    'Content-type': 'application/json',
    'Accept': 'application/json',
    'Authorization': '<Your token>',
    'Username': 'test',
    'Password': 'test..2022',
  }; */
/* 
  factory HttpClientBasicCredentials(String username, String password) =>
    _HttpClientBasicCredentials(username, password); */

  Future pedirdatos() async {
    final response = await http.get(
      url,
    );
    final lista = List.from(jsonDecode(response.body));

    lista.forEach((e) => e);

    /*   print(response.body); */
    print(response.body);
  }

  createCategory() async {
    var url = Uri.parse('https://example.com/whatsit/create');
    var response =
        await http.post(url, body: {'name': 'doodle', 'color': 'blue'});
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    print(await http.read(Uri.parse('https://example.com/foobar.txt')));
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Pedir datos'),
      onPressed: () => {pedirdatos()},
    );
  }
}
