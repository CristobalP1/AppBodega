import 'dart:ui';
import 'package:animate_do/animate_do.dart';
import 'package:flutter_application_1/screens/PurchaseOrders/providers/get_critical_products.dart';
import 'package:flutter_application_1/widget/Buttons/speed_dial_button.dart';
import 'package:flutter_application_1/widget/DataTableProducts/data_table_home.dart';
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/FliterSearch/filter_search.dart';
import 'package:provider/provider.dart';

import '../../theme/app_theme.dart';
import '../Products/pages/info_product_screen.dart';
import '../PurchaseOrders/models/cafe_products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    TextStyle fontSize23 = const TextStyle(fontSize: 23);
    final productProvider = Provider.of<GetCriticalProductsProvider>(context);
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
            onPressed: () {
              print('holaa');
            },
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: [
            FilterSearchHome(),
            FutureBuilder(
                future: productProvider.getProductsCritics(),
                builder: (_, AsyncSnapshot<List<Producto>?> snapshot) {
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
      floatingActionButton: const FloatingButton(),
      drawer: const ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }

  List<Widget> _listDetails(data) {
    List<Widget> details = [];

    details.add(Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          DataTable(
              columns: const [
                DataColumn(label: Text('Producto')),
                DataColumn(label: Text('Stock')),
                DataColumn(label: Text('Info')),
              ],
              rows: data
                  .map<DataRow>((e) => DataRow(cells: [
                        DataCell(FadeInDown(
                            delay: Duration(milliseconds: 300),
                            child: Text(e.nombre.toString()))),
                        DataCell(FadeInLeft(
                            delay: Duration(milliseconds: 200),
                            child: Text(e.sku.toString()))),
                        DataCell(FadeInRight(
                          delay: Duration(milliseconds: 300),
                          child: TextButton(
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InfoProductScreen(
                                            nombre: e.nombre.toString(),
                                            sku: e.sku.toString(),
                                            codigo: e.codigo.toString(),
                                            precio: e.precio.toString(),
                                            costo: e.costo.toString(),
                                            stock: e.stock.toString(),
                                          )))
                            },
                            child: Text("Ver Mas"),
                          ),
                        )),
                      ]))
                  .toList())
        ],
      ),
    ));

    return details;
  }
}
