import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/button_save_canceller.dart';
import 'package:flutter_application_1/widget/input_form.dart';

class CreateProductScreen extends StatelessWidget {
  const CreateProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
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
              labelText: "Categoria",
              hintText: "Lacteos",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "SKU",
              hintText: "23231",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "Codigo de barra",
              hintText: "780231223",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "Stock Incial",
              hintText: "23",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "Stock Critico",
              hintText: "3",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "Precio",
              hintText: "3990",
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
      bottomSheet: const ButtonSaveCanceller(
        title1: 'Cancelar',
        title2: 'Crear Producto',
      ),
    );
  }
}
