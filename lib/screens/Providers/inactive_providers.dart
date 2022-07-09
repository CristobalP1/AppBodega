// ignore_for_file: use_key_in_widget_constructors, prefer_const_declarations, prefer_const_constructors, avoid_unnecessary_containers, unused_import, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_element, avoid_web_libraries_in_flutter, avoid_types_as_parameter_names, avoid_print, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter_application_1/screens/Vendor/see_vendors_screen.dart';
import 'package:flutter_application_1/screens/Home/home_screen.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:flutter_application_1/services/services.dart';

class InactiveProvidersScreen extends StatelessWidget {
  const InactiveProvidersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Proveedores',
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: AppTheme.primary,
              leading: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: AppTheme.quaternary,
                  size: 30,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              ),
              title: const Text(
                'Proveedores Inactivos',
                style: TextStyle(fontSize: 20, color: AppTheme.quaternary),
              ), //Define el titulo del appbar
              elevation: 15.5,
              actions: <Widget>[
                IconButton(
                  icon: const Icon(
                    Icons.more_vert,
                    color: AppTheme.quaternary,
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
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  height: 60,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          child: Container(
                            margin: EdgeInsets.only(right: 5),
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: const TextField(
                              obscureText: false,
                              decoration: InputDecoration(
                                  border: UnderlineInputBorder(),
                                  labelText: 'Buscar',
                                  icon: Icon(Icons.search_sharp)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 50),
                ),
                Container(
                    height: 70,
                    child: Card(
                        child: ListTile(
                     onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: const Text('Aceptar'),
                                            ),
                                          ],
                                          title: const Text(
                                              'Alerta'),
                                          contentPadding:
                                              const EdgeInsets.all(20.0),
                                          content: const Text(
                                            'Proveedor Activado',
                                          ),
                                        ));
                              },
                              child: const Text('Aceptar'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Cancelar'),
                            ),
                          ],
                          title: const Text('Alerta'),
                          contentPadding: const EdgeInsets.all(20.0),
                          content: const Text(
                              '¿Estas seguro que quieres activar a este proveedor?'),
                        ));
              },
                      title: Text('Sala De Ventas Colun',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Juana de Arco 2083, Providencia, Región Metropolitana'),
                    )))
              ],
            )));
  }
}
