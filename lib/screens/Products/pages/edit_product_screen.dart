import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Inputs/input_form.dart';
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';
import 'package:flutter_application_1/widget/Buttons/button_save_canceller.dart';
import 'package:flutter_application_1/screens/Products/widgets/DropDownProducts.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '',
              style: TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 1,
            ),
            const Text(
              'Editar producto',
              style: TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 20,
            ),
            const InputForm(
              labelText: "Nombre: Leche",
              hintText: "leche",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "Categoria: Lacteos",
              hintText: "Lacteos",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "SKU: 23231",
              hintText: "23231",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "Codigo de barras: 780231223",
              hintText: "780231223",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "Stock: 23",
              hintText: "23",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "Stock critico: 3",
              hintText: "3",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "Precio: 3990",
              hintText: "3990",
            ),
            const SizedBox(
              height: 25,
            ),
            CustomDropDown(
              options: const ["Activo", "Bloqueado"],
              onChange: (value) {
                print("Estado" + value);
              },
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
