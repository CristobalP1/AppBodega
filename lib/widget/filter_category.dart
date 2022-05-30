import 'package:flutter/material.dart';

class FilterCategory extends StatelessWidget {
  const FilterCategory({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (contex, i) => ListTile(
              leading: const Text('leche'),
              title: const Center(child: Text('12')),
              trailing: const Text('Ver mas'),
              onTap: () {
                /*  Navigator.pushNamed(context, 'card'); */
              },
            ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 10);
  }
}
