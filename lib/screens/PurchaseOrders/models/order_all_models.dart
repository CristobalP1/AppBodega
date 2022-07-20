// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

class Producto1 {
  int id;
  int numeroPedido;
  int precioOrden;
  int cantidadOrden;
  int proveedor;
  int vendedor;
  int producto;
  String estadoPedido;

  Producto1({
    required this.id,
    required this.numeroPedido,
    required this.precioOrden,
    required this.cantidadOrden,
    required this.proveedor,
    required this.vendedor,
    required this.producto,
    required this.estadoPedido,
  });

  factory Producto1.fromJson(Map json) {
    return Producto1(
      id: json["id"],
      numeroPedido: json["numeroPedido"],
      precioOrden: json["precioOrden"],
      cantidadOrden: json["cantidadOrden"],
      proveedor: json["proveedor"],
      vendedor: json["vendedor"],
      producto: json["producto"],
      estadoPedido: json["estadoPedido"],
    );
  }
}
