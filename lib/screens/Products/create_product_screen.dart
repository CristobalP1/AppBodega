import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Buttons/button_save_canceller.dart';
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';
import 'package:flutter_application_1/widget/Inputs/input_form.dart';

class CreateProductScreen extends StatefulWidget {
  const CreateProductScreen({Key? key}) : super(key: key);
  @override
  _CreateProductScreenState createState() => _CreateProductScreenState();
}

class _CreateProductScreenState extends State<CreateProductScreen> {
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
        next: 'Crear Producto',
        back: 'Cancelar',
      ),
      drawer: const ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }
}
