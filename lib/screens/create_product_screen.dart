import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/input_form.dart';

class CreateProductScreen extends StatelessWidget {
  const CreateProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [
            InputForm(labelText: 'Nombre Producto', hintText: 'leche'),
          ],
        ),
      ),

    );
  }
}
