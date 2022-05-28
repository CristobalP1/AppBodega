import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/button_save_canceller.dart';

class EditProductScreen extends StatelessWidget {
  const EditProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('EditProductScreen'),
      ),
      bottomSheet: ButtonSaveCanceller(
        title1: 'Cancelar',
        title2: 'Editar Producto',
      ),
    );
  }
}
