import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class FilterHomeScreen extends StatelessWidget {
  final list;
  const FilterHomeScreen({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Categorias'),
          elevation: 0,
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert),
              onPressed: () {
                print(list);
              },
            )
          ],
        ),
        body: Column(
          children: [
            Flexible(
              child: ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, position) {
                  return Tarea24(list[position]);
                },
                //children: listas.map((elem) => Tarea(elem)).toList(),
              ),
            ),
          ],
        ));
  }
}

class Tarea24 extends StatelessWidget {
  final String tarea;
  Tarea24(this.tarea);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppTheme.primary, width: 2),
        ),
        margin: const EdgeInsets.only(left: 26, top: 35, right: 26),
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
        child: Column(
          children: [
            Card(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      tarea,
                      style: const TextStyle(
                          fontSize: 19, fontWeight: FontWeight.w500),
                    ),
                    const Icon(Icons.accessibility_new_outlined)
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Leche'),
                  Text('23'),
                  Text('Solicitar'),
                ]),
            const SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Leche'),
                  Text('23'),
                  Text('Solicitar'),
                ]),
            const SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Leche'),
                  Text('23'),
                  Text('Solicitar'),
                ]),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}