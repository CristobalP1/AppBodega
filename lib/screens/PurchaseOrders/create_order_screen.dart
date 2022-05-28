import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/button_save_canceller.dart';

class CreateOrderScreen extends StatelessWidget {
  const CreateOrderScreen({Key? key}) : super(key: key);
static const String titulo = 'Crear Pedido';
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(    
        
      appBar: AppBar(
        title: const Text(titulo),
        leading: const Icon(Icons.menu_outlined),
        elevation: 15.5, 
        ),

      body: Column(
        children:  [
          Container(
            padding: const EdgeInsets.fromLTRB(26, 0, 0, 0),
            color: Colors.red,
            
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text( 'Nombre Proveedor:'))
              ),
          Container(
            color: Colors.blue,
            padding: const EdgeInsets.fromLTRB(26, 0, 0, 0),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: MyStatefulWidget())
              
              ),
   
          Container(
            child: const Align(
              alignment: Alignment.bottomLeft,
              child: Text( 'Productos:')
            ),
            color: Colors.yellow,
            padding: const EdgeInsets.fromLTRB(26, 40, 0, 0),
            ),
          
        

          ],
        
          ),
        bottomSheet: const ButtonSaveCanceller(
        title1: 'Siguiente',
        title2: 'Cancelar',
      ),
    );
  }
  }
  
  class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Soprole';

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      
      style: const TextStyle(color: Colors.black),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>['Soprole', 'Colun', 'Nestle']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

          
      
      
  