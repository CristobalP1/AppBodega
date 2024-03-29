import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../../theme/app_theme.dart';

class FormOrder23 extends StatefulWidget {
  final nombre;
  final stock;

  const FormOrder23({
    Key? key,
    this.nombre,
    this.stock,
  }) : super(key: key);

  @override
  State<FormOrder23> createState() => _FormOrder23State();
}

class _FormOrder23State extends State<FormOrder23> {
  @override
  Widget build(BuildContext context) {
    const sizedBoxSpace = SizedBox(height: 24);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Orden De Compra'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: AppTheme.quaternary,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(23, 0, 23, 0),
        child: Form(
          child: Flexible(
            child: ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedBoxSpace,
                  FadeInLeft(
                    duration: Duration(milliseconds: 300),
                    child: ListTile(
                      leading: Icon(Icons.toll),
                      title: Text("Producto:"),
                      subtitle: Text(widget.nombre),
                    ),
                  ),
                  FadeInLeft(
                    duration: Duration(milliseconds: 400),
                    child: ListTile(
                      leading: Icon(Icons.production_quantity_limits),
                      title: Text("Stock:"),
                      subtitle: Text(widget.stock),
                    ),
                  ),
                  FadeInLeft(
                    duration: Duration(milliseconds: 500),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person),
                        labelText: "Proveedor",
                      ),
                    ),
                  ),
                  sizedBoxSpace,
                  FadeInLeft(
                    duration: Duration(milliseconds: 600),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.person_outline),
                        labelText: "Vendedor",
                      ),
                    ),
                  ),
                  sizedBoxSpace,
                  FadeInLeft(
                    duration: Duration(milliseconds: 700),
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.scatter_plot),
                        labelText: "Cantidad",
                      ),
                    ),
                  ),
                  sizedBoxSpace,
                  FadeInLeft(
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.attach_money),
                        labelText: "Precio",
                      ),
                    ),
                  ),
                  sizedBoxSpace,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('Crear'),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Cancelar'),
                        ),
                      ])
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
