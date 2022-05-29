import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Buttons/button_save_canceller.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('EditProductScreen'),
      ),
      bottomSheet: ButtonSaveCanceller(
        next: 'Editar Producto',
        back: 'Cancelar',
      ),
    );
  }
}
