import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/DropDown/DropDown.dart';

class InactiveProvidersScreen extends StatelessWidget {
  const InactiveProvidersScreen({Key? key}) : super(key: key);
  //TODO: conver to statefull widget to obtain the selected provider
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Proveedores Inactivos"),
      ),
      body: Center(
        child: Column(children: [
           CustomDropDown(options: const ["Soprole","Colun"],onChange: (value){
            print("inactive"+value);
          },),
          FloatingActionButton.extended(onPressed: (){
            print("press");
          },label: const Text("Activar"))
        ],mainAxisAlignment: MainAxisAlignment.spaceEvenly,crossAxisAlignment: CrossAxisAlignment.center,),
      ),
    );
  }
}
