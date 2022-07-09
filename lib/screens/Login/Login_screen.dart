
// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/Constants.dart';
import 'package:flutter_application_1/widget/Inputs/input_form.dart';
import '../../widget/Inputs/input_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bussiness Solutions'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Iniciar Sesion',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
             InputField(
              hint: 'Nombre de la categoria',
            ),
            const SizedBox(
              height: 10,
            ),
            const InputForm(
              labelText: "Contraseña",
              hintText: "********",
            ),
           const SizedBox(height:30),
          Row(children: [
                         TextButton(
                onPressed:() => Navigator.pushNamed(context, homePage),
           child: const Text('Iniciar Sesion')),
         const SizedBox(width:155),
           TextButton(
                onPressed:() => Navigator.pushNamed(context, homePage),
           child: const Text('Olvidé mi contraseña'))
          ],)           
          ],
        ),
      ),
    );
  }
}
