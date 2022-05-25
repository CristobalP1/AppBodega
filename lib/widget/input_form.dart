import 'package:flutter/material.dart';

class InputForm extends StatelessWidget {
  final labelText;
  final hintText;
  const InputForm({Key? key, this.labelText, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      child: TextFormField(
        decoration: InputDecoration(
            labelText: labelText,
            hintText: hintText,
            hintStyle: const TextStyle(fontSize: 13),
            labelStyle: const TextStyle(fontSize: 19)),
      ),
    );
  }
}
