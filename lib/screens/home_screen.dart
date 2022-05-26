import 'dart:ui';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize23 = const TextStyle(fontSize: 23);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Productos'),
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
                'Contado',
                style: fontSize23,
              ),
              Text(
                '0',
                style: fontSize23,
              ),
            ],
          ),
        ),
        floatingActionButton: const FloatingButton());
  }
}

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.add_event,
      backgroundColor: Color.fromARGB(255, 236, 55, 137),
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      children: [
        SpeedDialChild(
            child: Icon(Icons.create),
            label: 'Crear Producto',
            backgroundColor: Color.fromARGB(255, 118, 170, 120),
            onTap: () => {Navigator.pushNamed(context, 'create_product')}),
        SpeedDialChild(
            child: Icon(Icons.create),
            label: 'Crear Categoria',
            backgroundColor: Color.fromARGB(255, 118, 170, 120),
            onTap: () => {Navigator.pushNamed(context, 'create_category')}),
      ],
    );
  }
}
