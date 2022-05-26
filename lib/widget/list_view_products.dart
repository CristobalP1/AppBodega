import 'package:flutter/material.dart';

class ListViewProducts extends StatelessWidget {
  const ListViewProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (contex, i) => ListTile(
              leading: const Text('leche'),
              title: const Center(child: Text('23')),
              trailing: const Text('Solicitar'),
              onTap: () {},
            ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 10);
  }
}
