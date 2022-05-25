import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/input_form.dart';

class CreateProductScreen extends StatelessWidget {
  const CreateProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(
              height: 20,
            ),
            Text(
              'Crear producto',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            InputForm(
              labelText: "nombre",
              hintText: "leche",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "nombre",
              hintText: "leche",
            ),
          ],
        ),
      ),
    );
  }
}
