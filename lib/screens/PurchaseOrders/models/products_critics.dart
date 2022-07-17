// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

class ListProductsCritic {
  ListProductsCritic({
    required this.listado,
  });

  List<Listado> listado;

  factory ListProductsCritic.fromJson(String str) =>
      ListProductsCritic.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListProductsCritic.fromMap(Map<String, dynamic> json) =>
      ListProductsCritic(
        listado:
            List<Listado>.from(json["Listado"].map((x) => Listado.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
      };
}

class Listado {
  Listado({
    this.nombre,
    this.sku,
    this.codigo,
    this.precio,
    this.costo,
    this.stock,
  });

  String? nombre;
  String? sku;
  String? codigo;
  int? precio;
  int? costo;
  dynamic stock;

  factory Listado.fromJson(String str) => Listado.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Listado.fromMap(Map<String, dynamic> json) => Listado(
        nombre: json["Nombre"],
        sku: json["SKU"],
        codigo: json["Codigo"],
        precio: json["Precio"],
        costo: json["Costo"],
        stock: json["Stock"],
      );

  Map<String, dynamic> toMap() => {
        "Nombre": nombre,
        "SKU": sku,
        "Codigo": codigo,
        "Precio": precio,
        "Costo": costo,
        "Stock": stock,
      };
}
