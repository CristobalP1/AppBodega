import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Filter/filter_category.dart';

class FilterSearchHome extends StatelessWidget {
  const FilterSearchHome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 60,
      child: Row(
        children: <Widget>[
          // First
          Expanded(
            child: GestureDetector(
              child: Container(
                  margin: const EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Buscar Producto'),
                      )
                    ],
                  )),
            ),
          ),
          Container(
            width: 125,
            child: Column(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: Container(
                        margin: const EdgeInsets.only(left: 5, bottom: 5),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.filter_alt_sharp),
                              color: Colors.black,
                              onPressed: () {
                                filterWidgetCategory();
                              },
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              'Filtrar',
                              style: TextStyle(color: Colors.black45),
                            )
                          ],
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}
