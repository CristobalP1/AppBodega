import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Inputs/input_form.dart';
import 'package:flutter_application_1/widget/Buttons/button_save_canceller.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({Key? key}) : super(key: key);

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
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Editar producto',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.create_sharp,
                      color: Colors.pinkAccent,
                      size: 30.0,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('CONTAINED BUTTON'),
                    )
                  ],
                ),
              ],
            ),
            const InputForm(
              labelText: "Leche",
              hintText: "leche",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "Lacteos",
              hintText: "Lacteos",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "23231",
              hintText: "23231",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "780231223",
              hintText: "780231223",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "23",
              hintText: "23",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "3",
              hintText: "3",
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "3990",
              hintText: "3990",
            ),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
      bottomSheet: const ButtonSaveCanceller(
        next: 'Cancelar',
        back: 'Guardar cambios',
      ),
    );
  }
}
