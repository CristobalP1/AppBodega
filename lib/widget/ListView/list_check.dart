import 'package:flutter/material.dart';

class ListCheckWidget extends StatelessWidget {
  const ListCheckWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lista = [
      'Pendiente de envio',
      'Enviado a Proveedor',
      'Recibido en bodega',
      'Pedido Finalizado'
    ];

    return ListView.separated(
        itemBuilder: (contex, i) => ListTile(
              leading: const Icon(Icons.check, color: Colors.green),
              title: Center(child: Text(lista[i])),
              onTap: () {},
            ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 4);
  }
}
