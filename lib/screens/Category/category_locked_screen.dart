import 'package:flutter/material.dart';

import '../../theme/app_theme.dart';

class CategoryLockedScreen extends StatelessWidget {
  const CategoryLockedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: AppTheme.quaternary,
              size: 30,
            ),
            onPressed: () {
              print('holaa');
            },
          )
        ],
      ),
      body: Center(
        child: Text('CategoryLockedScreen'),
      ),
    );
  }
}
