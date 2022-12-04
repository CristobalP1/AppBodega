// ignore_for_file: use_key_in_widget_constructors, prefer_const_declarations, prefer_const_constructors, avoid_unnecessary_containers, unused_import, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_element, avoid_web_libraries_in_flutter, avoid_types_as_parameter_names, avoid_print, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter_application_1/screens/Vendor/see_vendors_screen.dart';
import 'package:flutter_application_1/screens/Home/home_screen.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_application_1/utils/Constants.dart';

class ActiveProvidersScreen extends StatelessWidget {
  const ActiveProvidersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Proveedores 1',
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
                'Proveedores Activos',
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
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text('Distribuidora Santiago ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Martínez de Rozas 3047, Santiago, Región Metropolitana '),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SeeVendorsScreen())),
                      title: Text('Sala De Ventas Colun',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Juana de Arco 2083, Providencia, Región Metropolitana'),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text('CD Walmart Lo Aguirre (Acuenta) ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Los Almendros 20254, Pudahuel, Región Metropolitana'),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text('Nestlé Macul S.A.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Av. Vicuña Mackenna Ote. 4230, Santiago, Macul, Región Metropolitana'),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text('Surlat Industrial S.A. ',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle:
                          Text('Málaga 89, Las Condes, Región Metropolitana'),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text('Soprole S.A.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Pdte Jorge Alessandri Rodríguez 10800, San Bernardo, Región Metropolitana'),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text('Distribuidora Mayorista De Abarrotes S A',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Av. Cerrillos 4030, Pedro Aguirre Cerda, Región Metropolitana'),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text('Distribuidora de Abarrotes El Bigote',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Antonia López de Bello 743, Santiago, Recoleta Santiago, Región Metropolitana'),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text('Distribuidora De Abarrotes Lo Valledor S A',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Maquinista Escobar 3174, Santiago, Región Metropolitana'),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text(
                          'Distribuidora De Abarrotes Jorge Rodriguez Larrazabal E.I.R.L.',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Santo Domingo 580, Santiago, XIII Metropolitana de Santiago'),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text('Distribuidora JA',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Av. Sta. Rosa 5050, San Joaquín, 8960020, Región Metropolitana'),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text(
                          'Comercial Industrial Y Distribuidora De Alimentos Y Abarrotes Fernandez Y Pena L',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Carmen Lidia 5373, Quinta Normal, 8520007, Región Metropolitana'),
                    ))),
                Container(
                    height: 70,
                    color: Colors.amber[600],
                    child: Card(
                        child: ListTile(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ActiveProvidersScreen())),
                      title: Text(
                          'Distribuidora De Abarrotes Mario Galarce Galarce E',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          )),
                      subtitle: Text(
                          'Domingo Bondi 1160, Las Condes, Región Metropolitana'),
                    ))),
              ],
            )));
  }
}
