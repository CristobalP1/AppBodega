import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';

const ff = TextStyle(
    fontSize: 25,
    color: Color.fromARGB(255, 0, 0, 0),
    fontWeight: FontWeight.bold);
const fg = TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0));
const i = Icon(Icons.circle_outlined);
const i2 = Icon(Icons.circle);

class SeeVendorsScreen extends StatelessWidget {
  const SeeVendorsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 153, 255),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ActiveProvidersScreen()));
          },
        ),
        title: const Text(
          'Proveedor Colun',
          style: TextStyle(fontSize: 25, color: Color.fromARGB(255, 0, 0, 0)),
        ), //Define el titulo del appbar
        elevation: 15.5,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.more_vert,
              color: Color.fromARGB(255, 0, 0, 0),
              size: 30,
            ),
            onPressed: () {
              // do something
            },
          )
        ], //define la elevación es un valor float
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      // ignore: prefer_const_literals_to_create_immutables
      body: Column(children: <Widget>[
        const Padding(
          padding: EdgeInsets.only(top: 15),
        ),
        const Align(
          alignment: FractionalOffset(0.1, 0.1),
          child: Text(
            "Rut: 20.321.236-8",
            style: ff,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 100),
        ),
        const Align(
            alignment: FractionalOffset(0.01, 0.02),
            child: Text("Datos Contacto:",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25))),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: Table(
            border: TableBorder.all(
              width: 2.5,
              color: Colors.black,
            ),
            children: const [
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 159, 159, 159)),
                  children: [
                    Text(
                      ' Correo',
                      style: ff,
                    ),
                    Text(
                      ' Nombre Vendedor',
                      style: ff,
                    )
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 213, 213, 213)),
                  children: [
                    Text(
                      ' colun_juan_retamales@colunchile.cl',
                      style: fg,
                    ),
                    Text(
                      ' Juan Retamales',
                      style: fg,
                    )
                  ]),
              TableRow(
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 213, 213, 213)),
                  children: [
                    Text(
                      ' colun_mario_gutierrez@colunchile.cl',
                      style: fg,
                    ),
                    Text(
                      ' Mario Gutierrez',
                      style: fg,
                    )
                  ])
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50),
        ),
        FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SeeProductsVendorsScreen()));
          },
          backgroundColor: const Color.fromARGB(255, 0, 255, 140),
          label: const Text(
            'Ver Productos',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          icon: const Icon(
            Icons.visibility,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
        ),
        FloatingActionButton.extended(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: const Text('Aceptar'),
                                        ),
                                      ],
                                      title: const Text('Alerta Desactivación'),
                                      contentPadding:
                                          const EdgeInsets.all(20.0),
                                      content: const Text(
                                        'Proveedor Desactivado',
                                      ),
                                    ));
                          },
                          child: const Text('Aceptar'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancelar'),
                        ),
                      ],
                      title: const Text('Alerta Desactivación'),
                      contentPadding: const EdgeInsets.all(20.0),
                      content: const Text(
                          '¿Estas seguro que quieres desactivar a este proveedor?'),
                    ));
          },
          backgroundColor: const Color.fromARGB(255, 255, 98, 98),
          label: const Text(
            'Desactivar',
            style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
          ),
          icon: const Icon(
            Icons.visibility_off,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      ]),
    );
  }
}
