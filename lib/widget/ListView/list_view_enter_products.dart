import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/Inputs/input_form.dart';

class ListViewProductsWidget extends StatelessWidget {
  const ListViewProductsWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (contex, i) => ListTile(
              leading: const Text('leche '),
              title: Container(
                padding: EdgeInsets.only(left: 60,right: 80),
                child: const Center(child:InputForm(
                hintText: "0")),),
              trailing: const Text('1.500'),
              
            ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 10);
  }
}
