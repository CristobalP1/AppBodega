import 'package:animate_do/animate_do.dart';
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
          title: const Text('Login AppBodega'),
        ),
        body: Container(
          margin: const EdgeInsets.fromLTRB(30, 30, 30, 0),
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                const SizedBox(
                  height: 20,
                ),
                FadeInLeft(
                  duration: Duration(milliseconds: 400),
                  child: const Text(
                    'Iniciar Sesion',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                FadeInLeft(
                  duration: Duration(milliseconds: 500),
                  child: InputField(
                    hint: 'Usuario',
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                FadeInLeft(
                  duration: Duration(milliseconds: 600),
                  child: InputField(
                    hint: 'Contraseña',
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const SizedBox(width: 5),
                    TextButton(
                        onPressed: () => Navigator.pushNamed(context, homePage),
                        child: const Text('Iniciar Sesion')),
                    const SizedBox(width: 50),
                    TextButton(
                        onPressed: () =>
                            Navigator.pushNamed(context, loginUser),
                        child: const Text('Olvidé mi contraseña'))
                  ],
                ),
              ])),
        ));
  }
}
