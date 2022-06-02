import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';

class VendorScreen extends StatelessWidget {
  const VendorScreen({Key? key}) : super(key: key);

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, createVendor),
              child: const Text("Crear Vendedor"),
            )
          ],
        ),
      ),
      drawer: const ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }
}
