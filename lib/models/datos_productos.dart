import 'dart:ffi';

class Datos_Productos {
  late String marca;
  late String precio;
  late String title;

  Datos_Productos(
      {required this.marca, required this.precio, required this.title});

  Datos_Productos.fromJson(Map<String, dynamic> json) {
    marca = json['marca'];
    precio = json['precio'];
    title = json['title'];
  }
}
