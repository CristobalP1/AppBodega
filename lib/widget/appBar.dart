import 'package:flutter/material.dart';

class AppBarPesonalized extends StatelessWidget {
  const AppBarPesonalized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Productos'),
      backgroundColor: Colors.pinkAccent,
      leading: const Icon(Icons.menu_outlined),
      actions: [
        IconButton(
          icon: const Icon(Icons.attach_file_rounded),
          onPressed: () {
            print('holaa');
          },
        )
      ],
    );
  }
}
