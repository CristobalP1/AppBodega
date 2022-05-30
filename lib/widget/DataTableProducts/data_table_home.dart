import 'package:flutter/material.dart';
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
              columns: [
                const DataColumn(
                  label: Text('Descripcion'),
                  numeric: false,
                ),
                const DataColumn(
                  label: Text('Stock'),
                  numeric: true,
                ),
                const DataColumn(label: Text('Info'), numeric: false),
              ],
              rows: productos
                  .map(
                    (products) => DataRow(
                      selected: products.selected,
                      onSelectChanged: (s) {
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
                                  contentPadding: const EdgeInsets.all(20.0),
                                  content: const Text(
                                      '¿Estas seguro que deseas solicitar mas unidades de este producto?'),
                                ));
                        setState(() {
                          products.selected = s!;
                        });
                      },
                      cells: [
                        DataCell(
                          Text(
                            products.descripcion,
                          ),
                        ),
                        DataCell(
                          Text(
                            products.stock,
                          ),
                        ),
                        DataCell(
                          Text(
                            products.info,
                          ),
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
    ;
  }
}
