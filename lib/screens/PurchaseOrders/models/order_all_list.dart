// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

class OrderAll {
  OrderAll({
    required this.id,
    required this.numeroPedido,
    required this.precioOrden,
    required this.cantidadOrden,
    required this.created,
    required this.estadoPedido,
    required this.proveedor,
    required this.vendedor,
    required this.producto,
  });

  int id;
  int numeroPedido;
  int precioOrden;
  int cantidadOrden;
  DateTime created;
  String estadoPedido;
  int proveedor;
  int vendedor;
  int producto;

  factory OrderAll.fromJson(String str) => OrderAll.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderAll.fromMap(Map<String, dynamic> json) => OrderAll(
        id: json["id"],
        numeroPedido: json["numero_pedido"],
        precioOrden: json["precio_orden"],
        cantidadOrden: json["cantidad_orden"],
        created: DateTime.parse(json["created"]),
        estadoPedido: json["estado_pedido"],
        proveedor: json["proveedor"],
        vendedor: json["vendedor"],
        producto: json["producto"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "numero_pedido": numeroPedido,
        "precio_orden": precioOrden,
        "cantidad_orden": cantidadOrden,
        "created": created.toIso8601String(),
        "estado_pedido": estadoPedido,
        "proveedor": proveedor,
        "vendedor": vendedor,
        "producto": producto,
      };
}
