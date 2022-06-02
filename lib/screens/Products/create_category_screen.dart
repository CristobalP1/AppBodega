import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Products/edit_category_screen.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';
import 'package:flutter_application_1/widget/Inputs/input_field.dart';

class CreateCategoryScreen extends StatefulWidget {
  const CreateCategoryScreen({Key? key}) : super(key: key);

  @override
  State<CreateCategoryScreen> createState() => _CreateCategoryScreenState();
}

class _CreateCategoryScreenState extends State<CreateCategoryScreen> {
  List<String> listas = [];
  TextEditingController controller = TextEditingController();
  String getvalue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
        backgroundColor: AppTheme.primary,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.attach_file_rounded),
            onPressed: () {
              print('holaa');
            },
          )
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            InputField(
              hint: 'Nombre de la categoria',
              controller: controller,
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton.icon(
              onPressed: () => {
                getvalue = controller.text,
                listas.add(getvalue),
                controller.text = '',
                setState(() {})
              },
              icon: const Icon(Icons.add),
              label: const Text("Crear Categoria"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Lista de categorias',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            Flexible(
              child: ListView.builder(
                itemCount: listas.length,
                itemBuilder: (context, position) {
                  return Tarea(listas[position]);
                },
                //children: listas.map((elem) => Tarea(elem)).toList(),
              ),
            )
          ],
        ),
      ),
      drawer: const ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }
}

class Tarea extends StatelessWidget {
  final String tarea;
  Tarea(this.tarea);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Text(tarea),
      ),
      onTap: () => {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EditCategoryScreen(name: tarea)))
      },
    );
  }
}
