import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class AppBarPesonalized extends StatelessWidget {
  const AppBarPesonalized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Productos'),
      backgroundColor: AppTheme.primary,
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
