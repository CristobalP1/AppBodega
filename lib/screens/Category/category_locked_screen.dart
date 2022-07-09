import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Category/create_category_screen.dart';
import 'package:provider/provider.dart';
import '../../Providers/list_category_provider.dart';

import '../../theme/app_theme.dart';

class CategoryLockedScreen extends StatelessWidget {
  const CategoryLockedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listado = Provider.of<ListCategoryProvider>(context);
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
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Lista de categorias bloqueadas',
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: <Widget>[],
            ),
            Flexible(
              child: ListView.builder(
                itemCount: listado.ListCategorias.length,
                itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.archive_outlined),
                  title: Text(listado.ListCategorias[index].nombreCategoria),
                  trailing: const Icon(Icons.content_paste_off),
                  onTap: () {
                    const Icon(Icons.archive_outlined);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
