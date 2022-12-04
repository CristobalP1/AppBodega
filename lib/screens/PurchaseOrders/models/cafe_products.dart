// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

import 'dart:convert';

class ListProduct {
  ListProduct({
    required this.listado,
  });

  List<Producto> listado;

  factory ListProduct.fromJson(String str) =>
      ListProduct.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListProduct.fromMap(Map<String, dynamic> json) => ListProduct(
        listado: List<Producto>.from(
            json["Listado"].map((x) => Producto.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
      };
}

class Producto {
  Producto({
    required this.nombre,
    required this.sku,
    required this.codigo,
    required this.precio,
    required this.costo,
    required this.stock,
  });

  String nombre;
  String sku;
  String codigo;
  int precio;
  int costo;
  dynamic stock;

  factory Producto.fromJson(String str) => Producto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Producto.fromMap(Map<String, dynamic> json) => Producto(
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
