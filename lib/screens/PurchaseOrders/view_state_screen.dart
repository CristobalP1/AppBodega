import 'package:flutter/material.dart';

class ViewStateScreen extends StatelessWidget {
  const ViewStateScreen({Key? key}) : super(key: key);

static const String titulo = 'Ver Estado Pedido';
  
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
            padding: const EdgeInsets.fromLTRB(26, 5, 0, 0),
            color: Colors.red,
            
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text( 'Numero Orden de compra:'))
              ),
           Container(
            padding: const EdgeInsets.fromLTRB(26, 5, 0, 0),
            color: Colors.green,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text( '234234'))
             
           ),
          Container(
            color: Colors.blue,
          
            padding: const EdgeInsets.fromLTRB(26, 20, 0, 0),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text( 'Nombre Proveedor:')
              )
              
              ),
              Container(
            padding: const EdgeInsets.fromLTRB(26, 5, 0, 0),
            color: Colors.green,
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text( 'Soprole'))
             
           ),
   Row(
              
              children: [
                
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.fromLTRB(60, 40, 0, 0),
                  color: Colors.red,
                  child: const Icon(
                    Icons.check,
                    color: Colors.green),
                ),
                
                Container(
                  
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text( 'Pendiente de Envio')
                ),
                
                color: Colors.yellow,
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                ),
              ],
            ),
          
Row(
              
              children: [
                
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.fromLTRB(60, 40, 0, 0),
                  color: Colors.red,
                  child: const Icon(
                    Icons.check,
                    color: Colors.green),
                ),
                
                Container(
                  
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text( 'Enviado a Proveedor')
                ),
                
                color: Colors.yellow,
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                ),
              ],
            ),

            Row(
              
              children: [
                
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.fromLTRB(60, 40, 0, 0),
                  color: Colors.red,
                  child: const Icon(
                    Icons.check,
                    color: Colors.green),
                ),
                
                Container(
                  
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text( 'Recibido en Bodega')
                ),
                
                color: Colors.yellow,
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                ),
              ],
            ),

            
            Row(
              
              children: [
                
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.fromLTRB(60, 40, 0, 0),
                  color: Colors.red,
                  child: const Icon(
                    Icons.check,
                    color: Colors.green),
                ),
                
                Container(
                  
                child: const Align(
                  alignment: Alignment.bottomLeft,
                  child: Text( 'Pedido Finalizado')
                ),
                
                color: Colors.yellow,
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                ),
              ],
            ),
          
        

          ],
        
          ),
        
    );
  }
  }
  
 