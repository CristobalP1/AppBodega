import 'dart:ui';
import 'package:flutter_application_1/widget/Buttons/speed_dial_button.dart';
import 'package:flutter_application_1/widget/DataTableProducts/data_table_home.dart';
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/FliterSearch/filter_search.dart';

import '../../theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle fontSize23 = const TextStyle(fontSize: 23);

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
      body: Column(
        children: const [FilterSearchHome(), CreateTableProductsHome()],
      ),
      floatingActionButton: const FloatingButton(),
      drawer: const ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }
}
