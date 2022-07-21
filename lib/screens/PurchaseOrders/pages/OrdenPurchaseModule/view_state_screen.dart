import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_application_1/screens/screens.dart';
import 'package:flutter_application_1/widget/ListView/list_check.dart';
import 'package:flutter_application_1/widget/Search/Search_bar.dart';

import '../../../../widget/Drawer/Drawer.dart';

class OrderPurchaseOpcion extends StatefulWidget {
  const OrderPurchaseOpcion({Key? key}) : super(key: key);

  static const String titulo = 'Modulo Orden de Compra';

  @override
  State<OrderPurchaseOpcion> createState() => _OrderPurchaseOpcionState();
}

class _OrderPurchaseOpcionState extends State<OrderPurchaseOpcion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Estado Orden De Compra'),
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
          margin: const EdgeInsets.fromLTRB(0, 30, 0, 00),
          child: Column(children: [
            Center(
                child: Text(
              'Listado de Ordenes',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 39, 0, 102),
              ),
            )),
            SizedBox(height: 10),
            Flexible(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  FadeInRightBig(
                    duration: Duration(milliseconds: 400),
                    child: Card(
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 12),
                      elevation: 0,
                      color: AppTheme.quaternary,
                      child: SizedBox(
                        height: 80,
                        child: Center(
                            child: TextButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderAllScreen()))
                          },
                          child: Text("Todas Las Ordenes De Compra"),
                        )),
                      ),
                    ),
                  ),
                  FadeInLeftBig(
                    duration: Duration(milliseconds: 700),
                    child: Card(
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 12),
                      elevation: 0,
                      color: AppTheme.quaternary,
                      child: SizedBox(
                        height: 80,
                        child: Center(
                            child: TextButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderPendingScreen()))
                          },
                          child: Text("Ordendes Pendientes"),
                        )),
                      ),
                    ),
                  ),
                  FadeInRightBig(
                    duration: Duration(milliseconds: 1000),
                    child: Card(
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 12),
                      elevation: 0,
                      color: AppTheme.quaternary,
                      child: SizedBox(
                        height: 80,
                        child: Center(
                            child: TextButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OrderSentScreen()))
                          },
                          child: Text("Ordendes Enviadas"),
                        )),
                      ),
                    ),
                  ),
                  FadeInLeftBig(
                    duration: Duration(milliseconds: 1300),
                    child: Card(
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 12),
                      elevation: 0,
                      color: AppTheme.quaternary,
                      child: SizedBox(
                        height: 80,
                        child: Center(
                            child: TextButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        OrderFinalizedScreen()))
                          },
                          child: Text("Ordendes Finalizadas"),
                        )),
                      ),
                    ),
                  ),
                  FadeInRightBig(
                    duration: Duration(milliseconds: 1600),
                    child: Card(
                      margin: EdgeInsets.fromLTRB(30, 20, 30, 12),
                      elevation: 0,
                      color: AppTheme.quaternary,
                      child: SizedBox(
                        height: 80,
                        child: Center(
                            child: TextButton(
                          onPressed: () => {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        OrderCancellerScreen()))
                          },
                          child: Text("Ordenes Canceladas"),
                        )),
                      ),
                    ),
                  )
                ],
              ),
            )
          ])),
      drawer: const ComplexDrawer(),
    );
  }
}
