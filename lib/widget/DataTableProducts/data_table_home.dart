import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Products/pages/info_product_screen.dart';
import 'package:flutter_application_1/screens/screens.dart';
import 'package:flutter_application_1/widget/DataTableProducts/products.dart';

class CreateTableProductsHome extends StatefulWidget {
  const CreateTableProductsHome({Key? key}) : super(key: key);

  @override
  _CreateTableProductsHomeState createState() =>
      _CreateTableProductsHomeState();
}

class _CreateTableProductsHomeState extends State<CreateTableProductsHome> {
  late List<Products> productos;

  @override
  void initState() {
    super.initState();
    productos = Products.getProductos();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DataTable(
              dividerThickness: 2,
              dataRowHeight: 50,
              headingRowHeight: 50,
              sortColumnIndex: 0,
              showCheckboxColumn: false,
              columns: const [
                DataColumn(
                  label: Center(
                    child: Text('Descripción'),
                  ),
                  numeric: false,
                ),
                DataColumn(
                  label: Center(
                    child: Text('Stock'),
                  ),
                  numeric: false,
                ),
                DataColumn(
                    label: Center(
                      child: Text('Info'),
                    ),
                    numeric: false),
              ],
              rows: productos
                  .map(
                    (products) => DataRow(
                      cells: [
                        DataCell(GestureDetector(
                          child: Text(
                            products.descripcion,
                            textAlign: TextAlign.center,
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        const InfoProductScreen()));
                          },
                          onLongPressEnd: (LongPressEndDetails details) {
                            null;
                          },
                        )),
                        DataCell(
                          Text(
                            products.stock,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        DataCell(
                          TextButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('Solicitar'),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('Cancelar'),
                                            ),
                                          ],
                                          title: const Text('Alerta De Stock'),
                                          contentPadding:
                                              const EdgeInsets.all(20.0),
                                          content: const Text(
                                              '¿Estas seguro que deseas solicitar mas unidades de este producto?'),
                                        ));
                              },
                              child: const Text('Solicitar')),
                        ),
                      ],
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
