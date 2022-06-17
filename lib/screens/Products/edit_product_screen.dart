import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Inputs/input_form.dart';
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';
import 'package:flutter_application_1/widget/Buttons/button_save_canceller.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.attach_file_rounded),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              '',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 1,
            ),
            Text(
              'Editar producto',
              style: TextStyle(fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            InputForm(
              labelText: "Nombre: Leche",
              hintText: "leche",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "Categoria: Lacteos",
              hintText: "Lacteos",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "SKU: 23231",
              hintText: "23231",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "Codigo de barras: 780231223",
              hintText: "780231223",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "Stock: 23",
              hintText: "23",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "Stock critico: 3",
              hintText: "3",
            ),
            SizedBox(
              height: 10,
            ),
            InputForm(
              labelText: "Precio: 3990",
              hintText: "3990",
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
      bottomSheet: const ButtonSaveCanceller(
        next: 'Guardar cambios',
        back: 'Cancelar',
      ),
      drawer: const ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }
}
