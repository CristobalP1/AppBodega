import 'package:flutter/material.dart';

import '../CheckBox/check_box.dart';

class ListViewCheckWidget extends StatelessWidget {
  const ListViewCheckWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (contex, i) => ListTile(
              leading: const CheckBoxWidget(),
              title: const Center(child: Text('Leche semidescremada')),
              onTap: () {},
            ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 10);
  }
}
