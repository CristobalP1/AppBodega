import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/models/datails_order.dart';
import '../../../theme/app_theme.dart';
import 'package:http/http.dart' as http;

class DetailsOrdersScreen extends StatefulWidget {
  const DetailsOrdersScreen({Key? key}) : super(key: key);

  @override
  State<DetailsOrdersScreen> createState() => _DetailsOrdersScreenState();
}

class _DetailsOrdersScreenState extends State<DetailsOrdersScreen> {
  late Future<List<Persona>> _ordenDetails;

  Future<List<Persona>> _getOrdenDetails() async {
    final url = Uri.parse("https://res-api-educacion.herokuapp.com/");
    final response = await http.get(url);

    List<Persona> orderDetails = [];

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);

      for (var i in jsonData) {
        orderDetails.add(Persona(i["title"], i["marca"], i["id"].toString()));
      }

      return orderDetails;
    } else {
      throw Exception("fallo todo perro");
    }
  }

  @override
  void initState() {
    super.initState();
    _ordenDetails = _getOrdenDetails();
  }

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
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 00),
        child: Column(
          children: [
            const Text('Productos con stock critico'),
            const SizedBox(
              height: 50,
            ),
            FutureBuilder(
                future: _ordenDetails,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Flexible(
                      child: ListView(
                        children: _listDetails(snapshot.data),
                      ),
                    );
                  } else if (snapshot.hasError) {
                    print(snapshot.error);
                    return const Text("Error");
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }),
          ],
        ),
      ),
    );
  }

  List<Widget> _listDetails(data) {
    List<Widget> details = [];
    final _items = [];
    for (var i in data) {
      _items.add(i.lastName);
    }
    String? _value = _items[2];
    details.add(Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          DataTable(
              columns: const [
                DataColumn(label: Text('Producto')),
                DataColumn(label: Text('Stock')),
                DataColumn(label: Text('Proveedor')),
              ],
              rows: data
                  .map<DataRow>((e) => DataRow(cells: [
                        DataCell(Center(child: Text(e.name.toString()))),
                        DataCell(Center(child: Text(e.phone.toString()))),
                        DataCell(Center(
                            child: DropdownButton<String>(
                                icon: const Icon(
                                  Icons.arrow_downward,
                                ),
                                elevation: 16,
                                style: const TextStyle(color: Colors.black),
                                onChanged: (value) {
                                  setState(() {
                                    _value = value;
                                  });
                                },
                                items: <String>[
                                  'Soprole',
                                  'Colun',
                                  'Nestle'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                                hint: Text(_value!)))),
                      ]))
                  .toList()),
          TextButton(onPressed: () => {}, child: Text("Siguiente"))
        ],
      ),
    ));

    return details;
  }
}
