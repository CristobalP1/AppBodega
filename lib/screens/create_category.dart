import 'package:flutter/material.dart';

class CreateCategory extends StatelessWidget {
  const CreateCategory({Key? key}) : super(key: key);

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
              'Crear Categoria',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            _inputNameCategory(),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: TextButton.icon(
                onPressed: () => {},
                icon: const Icon(Icons.add),
                label: const Text("Añadir Productos"),
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
    ;
  }

  Widget _inputNameCategory() {
    return Container(
      padding: EdgeInsets.all(1),
      child: TextFormField(
        decoration: const InputDecoration(
            labelText: "Nombre de la categoria",
            hintText: "Fiambreria, Lacteos, Aseo",
            hintStyle: TextStyle(fontSize: 11),
            labelStyle: TextStyle(fontSize: 20)),
      ),
    );
  }
}
