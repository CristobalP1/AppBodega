import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';
import 'package:flutter_application_1/widget/Forms/create_provider_form.dart';

class CreateProviderScreen extends StatelessWidget {
  const CreateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear proveedor'),
      ),
      body: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: double.infinity,
          child: const SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: CreateProviderForm(),
            ),
          )),
      drawer: const ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }
}
