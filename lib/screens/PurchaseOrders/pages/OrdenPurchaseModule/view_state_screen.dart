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
        title: const Text(OrderPurchaseOpcion.titulo),
        leading: const Icon(Icons.menu_outlined),
        elevation: 15.5,
      ),
      body: Container(
          margin: const EdgeInsets.fromLTRB(0, 30, 0, 00),
          child: Column(children: [
            Center(child: Text("Ordenes De Compra")),
            SizedBox(height: 10),
            Flexible(
              child: ListView(
                padding: const EdgeInsets.all(8),
                children: <Widget>[
                  FadeInRightBig(
                    duration: Duration(milliseconds: 200),
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
                  FadeInLeft(
                    duration: Duration(milliseconds: 1200),
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
                          child: Text("Ordendes Pendientes"),
                        )),
                      ),
                    ),
                  ),
                  FadeInRightBig(
                    duration: Duration(milliseconds: 2200),
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
                  Card(
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
                                  builder: (context) => OrderFinalizedScreen()))
                        },
                        child: Text("Ordendes Finalizadas"),
                      )),
                    ),
                  ),
                  Card(
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
                                  builder: (context) => OrderCancellerScreen()))
                        },
                        child: Text("Ordenes Canceladas"),
                      )),
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
