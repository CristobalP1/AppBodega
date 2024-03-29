import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Category/edit_category_screen.dart';
import 'package:flutter_application_1/theme/app_theme.dart';
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';
import 'package:flutter_application_1/widget/Inputs/input_field.dart';
import 'package:provider/provider.dart';
import '../../Provider/list_category_provider.dart';

class CreateCategoryScreen extends StatefulWidget {
  const CreateCategoryScreen({Key? key}) : super(key: key);

  @override
  State<CreateCategoryScreen> createState() => _CreateCategoryScreenState();
}

class _CreateCategoryScreenState extends State<CreateCategoryScreen> {
  List<String> listas = [];
  TextEditingController controller = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  String getvalue = '';
  String getvalue2 = '';
  @override
  Widget build(BuildContext context) {
    final listado = Provider.of<ListCategoryProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        leading: const Icon(Icons.menu_outlined),
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
        margin: const EdgeInsets.all(20),
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
              height: 30,
            ),
            const Text(
              'Lista de categorias',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SearchCategory(controller: controller2),
                IconButton(
                    //getvalue2 = controller2.text,
                    onPressed: () => {
                          getvalue2 = controller2.text,
                          listas.forEach((e) => {
                                e == getvalue2
                                    ? Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                EditCategoryScreen(
                                                    name: getvalue2)))
                                    : print('no encontrado')
                              })
                        },
                    icon: const Icon(Icons.search))
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Flexible(
              child: ListView.builder(
                itemCount: listado.ListCategorias.length,
                itemBuilder: (context, index) => FadeInLeft(
                  duration: Duration(milliseconds: 100 * index),
                  child: ListTile(
                      title:
                          Text(listado.ListCategorias[index].nombreCategoria),
                      trailing: const Icon(
                        Icons.block,
                        color: Colors.red,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => EditCategoryScreen(
                                    name: listado.ListCategorias[index]
                                        .nombreCategoria)));
                      }),
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: const ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }
}

class SearchCategory extends StatelessWidget {
  const SearchCategory({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: Container(
            margin: const EdgeInsets.only(right: 5),
            decoration: const BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.all(Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                      border: InputBorder.none, hintText: 'Buscar Categoria'),
                ),
              ],
            )),
      ),
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
