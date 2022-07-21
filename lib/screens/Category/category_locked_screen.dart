import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Category/create_category_screen.dart';
import 'package:provider/provider.dart';
import '../../Provider/list_category_provider.dart';

import '../../theme/app_theme.dart';

class CategoryLockedScreen extends StatelessWidget {
  const CategoryLockedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listado = Provider.of<ListCategoryProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias Bloqueadas'),
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
            SizedBox(
              height: 20,
            ),
            const Text(
              'Lista de categorias bloqueadas: ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 40,
            ),
            Flexible(
              child: ListView.builder(
                itemCount: listado.ListCategorias.length,
                itemBuilder: (context, index) => FadeInRightBig(
                  duration: Duration(milliseconds: 100 * index),
                  child: ListTile(
                    leading: const Icon(Icons.archive_outlined),
                    title: Text(listado.ListCategorias[index].nombreCategoria),
                    trailing: const Icon(Icons.content_paste_off),
                    onTap: () {
                      const Icon(Icons.archive_outlined);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
