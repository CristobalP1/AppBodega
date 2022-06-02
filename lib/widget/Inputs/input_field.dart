import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final hint, controller;

  InputField({Key? key, this.hint, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
      ),
    );
  }
}
