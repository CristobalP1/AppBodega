// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

class ListOrderAll {
  ListOrderAll({
    required this.orderAll,
  });

  List<OrderAll2> orderAll;

  factory ListOrderAll.fromJson(String str) =>
      ListOrderAll.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListOrderAll.fromMap(Map<String, dynamic> json) => ListOrderAll(
        orderAll: List<OrderAll2>.from(
            json["OrderAll"].map((x) => OrderAll2.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "OrderAll": List<dynamic>.from(orderAll.map((x) => x.toMap())),
      };
}

class OrderAll2 {
  OrderAll2({
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

  factory OrderAll2.fromJson(String str) => OrderAll2.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory OrderAll2.fromMap(Map<String, dynamic> json) => OrderAll2(
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
        "estado_pedido": estadoPedidoValues.reverse[estadoPedido],
        "proveedor": proveedor,
        "vendedor": vendedor,
        "producto": producto,
      };
}

enum EstadoPedido { ENVIADO, CANCELADO, FINALIZADO, PENDIENTE }

final estadoPedidoValues = EnumValues({
  "Cancelado": EstadoPedido.CANCELADO,
  "Enviado": EstadoPedido.ENVIADO,
  "Finalizado": EstadoPedido.FINALIZADO,
  "Pendiente": EstadoPedido.PENDIENTE
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
