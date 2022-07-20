import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.add_event,
      backgroundColor: AppTheme.primary,
      overlayColor: Colors.black,
      overlayOpacity: 0.5,
      children: [
        SpeedDialChild(
            child: const Icon(Icons.create),
            label: 'Crear Producto',
            backgroundColor: AppTheme.secondary,
            onTap: () => {Navigator.pushNamed(context, 'create_product')}),
        SpeedDialChild(
            child: const Icon(Icons.create),
            label: 'Crear Categoria',
            backgroundColor: AppTheme.secondary,
            onTap: () => {Navigator.pushNamed(context, 'create_category')}),
        SpeedDialChild(
            child: const Icon(Icons.disabled_visible),
            label: 'Productos Bloqueados',
            backgroundColor: AppTheme.secondary,
            onTap: () => {Navigator.pushNamed(context, 'products_blocked')}),
      ],
    );
  }
}
