import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize23 = const TextStyle(fontSize: 23);

    return Scaffold(
        appBar: AppBar(
          title: Text('Productos'),
          backgroundColor: Color.fromARGB(255, 236, 55, 137),
          leading: const Icon(Icons.menu_outlined),
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.attach_file_rounded),
              onPressed: () {
                print('holaa');
              },
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Contadorrr',
                style: fontSize23,
              ),
              Text(
                '0',
                style: fontSize23,
              ),
            ],
          ),
        ),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          backgroundColor: Color.fromARGB(255, 236, 55, 137),
          overlayColor: Colors.black,
          overlayOpacity: 0.5,
          children: [
            SpeedDialChild(
                child: Icon(Icons.create),
                label: 'Crear Producto',
                backgroundColor: Color.fromARGB(255, 118, 170, 120)),
            SpeedDialChild(
                child: Icon(Icons.create),
                label: 'Crear Categoria',
                backgroundColor: Color.fromARGB(255, 118, 170, 120)),
            SpeedDialChild(
                child: Icon(Icons.block),
                label: 'Bloquear Prodcuto',
                backgroundColor: Color.fromARGB(255, 212, 59, 69)),
            SpeedDialChild(
                child: Icon(Icons.block),
                label: 'Bloquear Categoria',
                backgroundColor: Color.fromARGB(255, 212, 59, 69))
          ],
        ));
  }
}
