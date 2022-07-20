import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/DataTableProducts/products_blocked.dart';
import 'package:flutter_application_1/screens/Products/pages/info_product_screen.dart';

class ProductsBlocked extends StatefulWidget {
  const ProductsBlocked({Key? key}) : super(key: key);

  @override
  _ProductsBlockedState createState() => _ProductsBlockedState();
}

class _ProductsBlockedState extends State<ProductsBlocked> {
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
