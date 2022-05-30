import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import '../../theme/app_theme.dart';

class AppBarPesonalized extends StatelessWidget {
  const AppBarPesonalized({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Productos'),
      backgroundColor: AppTheme.primary,
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
