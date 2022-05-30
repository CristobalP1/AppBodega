import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

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
