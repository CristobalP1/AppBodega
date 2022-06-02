import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Buttons/button_save_canceller.dart';
import 'package:flutter_application_1/widget/Drawer/Drawer.dart';
import 'package:flutter_application_1/widget/Inputs/input_field.dart';

import '../../widget/ListView/list_view_products.dart';

class EditCategoryScreen extends StatefulWidget {
  final name;

  const EditCategoryScreen({Key? key, this.name}) : super(key: key);

  @override
  State<EditCategoryScreen> createState() => _EditCategoryScreenState();
}

class _EditCategoryScreenState extends State<EditCategoryScreen> {
  bool change = false;
  List<String> productos = [];
  TextEditingController controller = TextEditingController();
  String getvalue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos'),
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
            Row(
              children: [
                Text(
                  'Categoria: ',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(change == false ? widget.name : getvalue,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InputField(
              controller: controller,
              hint: 'Renombrar Categoria',
            ),
            TextButton.icon(
              onPressed: () => {
                getvalue = controller.text,
                change = true,
                controller.text = '',
                setState(() {})
              },
              icon: const Icon(Icons.add),
              label: const Text("Cambiar Nombre"),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Lista de Productos',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
                child: Container(
                    margin: const EdgeInsets.fromLTRB(5, 10, 5, 10),
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child: ListViewProductsWidget())),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      drawer: const ComplexDrawer(),
      drawerScrimColor: Colors.transparent,
    );
  }
}
