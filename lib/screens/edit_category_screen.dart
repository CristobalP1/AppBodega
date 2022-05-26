import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/button_save_canceller.dart';

import '../widget/input_form.dart';
import '../widget/list_view_products.dart';

class EditCategoryScreen extends StatelessWidget {
  const EditCategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
        backgroundColor: Colors.blueAccent,
        leading: const Icon(Icons.menu_outlined),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.attach_file_rounded),
            onPressed: () {
              print('holaa');
            },
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Editar Categoria',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const InputForm(
              labelText: 'Nombre Categoria',
              hintText: 'Lacteos, Carnes',
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: TextButton.icon(
                onPressed: () => {},
                icon: const Icon(Icons.add),
                label: const Text("Añadir Productoss"),
              ),
            ),
            const Flexible(child: ListViewProducts()),
            const SizedBox(
              height: 50,
            ),
            const ButtonSaveCanceller(
              title1: 'Cancelar',
              title2: 'Editar Categoria',
            )
          ],
        ),
      ),
      bottomSheet: const ButtonSaveCanceller(
        title1: 'Cancelar',
        title2: 'Editar Categoria',
      ),
    );
  }
}
