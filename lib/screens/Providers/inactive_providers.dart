// ignore_for_file: use_key_in_widget_constructors, prefer_const_declarations, prefer_const_constructors, avoid_unnecessary_containers, unused_import, prefer_const_literals_to_create_immutables, non_constant_identifier_names, unused_element, avoid_web_libraries_in_flutter, avoid_types_as_parameter_names, avoid_print, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:flutter_application_1/models/models.dart';
import 'package:flutter_application_1/screens/Vendor/see_vendors_screen.dart';
import 'package:flutter_application_1/screens/Home/home_screen.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:flutter_application_1/services/services.dart';
import 'package:provider/provider.dart';

class InactiveProvidersScreen extends StatelessWidget {
  const InactiveProvidersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listado = Provider.of<ProviderService>(context,listen: true);
    Provider.of<ProviderService>(context,listen: false).loadProveedorInactivos();
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
              elevation: 15.5, //define la elevación es un valor float
            ),
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
            body:
           listado.providers.isEmpty ? Center(child: Text("No se encuentran Proveedores Inactivos")) :
           ListView.builder(
              itemCount: listado.providers.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemBuilder: (context,index)=> 
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
                                Provider.of<ProviderService>(context,listen: false).updateprovider(Listado(idDePorveedor: listado.providers[index].idDePorveedor, prov: listado.providers[index].prov, rut: listado.providers[index].rut, correo: listado.providers[index].correo, telefono: listado.providers[index].telefono, direccion: listado.providers[index].direccion, estado: "Activo"));
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
                      title: Text(listado.providers[index].prov,
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                          )),
                      subtitle: Text(
                          listado.providers[index].direccion),
                        leading: Column(mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                            Text('Rut'),
                            Text(listado.providers[index].rut)
                          ],)
                          ,
                    )
                    )
                    ),
            )));
  }
}
