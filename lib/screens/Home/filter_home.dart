import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/app_theme.dart';

class FilterHomeScreen extends StatelessWidget {
  final list;
  const FilterHomeScreen({Key? key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Categorias Filtradas'),
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
                  return FadeInLeftBig(
                      duration: Duration(milliseconds: 700 * position),
                      child: Tarea24(list[position]));
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
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
        margin: const EdgeInsets.all(15),
        elevation: 6,
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
                    const Icon(Icons.more_vert)
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Productos',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center),
                  Text('Stock',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.left),
                  Text('Info',
                      style: TextStyle(fontSize: 15),
                      textAlign: TextAlign.center),
                ]),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text(
                    'Leche',
                  ),
                  Text('23'),
                  Text('Ver Más'),
                ]),
            const SizedBox(
              height: 20,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Leche'),
                  Text('23'),
                  Text('Ver Más'),
                ]),
            const SizedBox(
              height: 10,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Leche'),
                  Text('23'),
                  Text('Ver Más'),
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
