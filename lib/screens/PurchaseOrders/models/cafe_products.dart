// To parse this JSON data, do
//
//     final welcome = welcomeFromMap(jsonString);

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
    required this.sucursal,
    required this.estado,
    required this.direccion,
    required this.contacto,
  });

  String sucursal;
  String estado;
  String direccion;
  String contacto;

  factory Producto.fromJson(String str) => Producto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Producto.fromMap(Map<String, dynamic> json) => Producto(
        sucursal: json["Sucursal"],
        estado: json["Estado"] == null ? null : json["Estado"],
        direccion: json["Direccion"],
        contacto: json["Contacto"],
      );

  Map<String, dynamic> toMap() => {
        "Sucursal": sucursal,
        "Estado": estado == null ? null : estado,
        "Direccion": direccion,
        "Contacto": contacto,
      };
}
