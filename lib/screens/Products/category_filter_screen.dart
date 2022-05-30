import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/screens.dart';
import 'package:flutter_application_1/widget/filter_category.dart';

class CategoryFilter extends StatefulWidget {
  const CategoryFilter({Key? key}) : super(key: key);

  @override
  _CategoryFilterState createState() => _CategoryFilterState();
}

class _CategoryFilterState extends State<CategoryFilter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Productos'),
        backgroundColor: Colors.pinkAccent,
        leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()))),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.edit),
              color: Colors.black,
              onPressed: () {
                print('Editar');
              },
            ),
            const Text(
              'Nombre Categoria',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Center(),
            const Flexible(child: FilterCategory()),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.pinkAccent,
      ),
    );
  }
}
