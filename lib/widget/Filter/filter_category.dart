import 'package:flutter/material.dart';

class FilterWidgetCategory extends StatefulWidget {
  const FilterWidgetCategory({
    Key? key,
  }) : super(key: key);

  @override
  State<FilterWidgetCategory> createState() => _FilterWidgetCategoryState();
}

class _FilterWidgetCategoryState extends State<FilterWidgetCategory> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
                      title: const Text('Alerta Desactivación'),
                      contentPadding: const EdgeInsets.all(20.0),
                      content: const Text(
                        'Proveedor Desactivado',
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
      title: const Text('Alerta Desactivación'),
      contentPadding: const EdgeInsets.all(20.0),
      content:
          const Text('¿Estas seguro que quieres desactivar a este proveedor?'),
    );
  }
}
