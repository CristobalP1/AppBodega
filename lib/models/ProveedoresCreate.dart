// To parse this JSON data, do
//
//     final proveedoresCreate = proveedoresCreateFromMap(jsonString);

// ignore_for_file: file_names

import 'dart:convert';

class ProveedoresCreate {
  ProveedoresCreate({
    required this.listadoAct,
    // required this.search,
  });

  List<ListadoAct> listadoAct;
  // List<SearchAct> search;

  factory ProveedoresCreate.fromJson(String str) =>
      ProveedoresCreate.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProveedoresCreate.fromMap(Map<String, dynamic> json) =>
      ProveedoresCreate(
        listadoAct: List<ListadoAct>.from(
            json["ListadoAct"].map((x) => ListadoAct.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "ListadoAct": List<dynamic>.from(listadoAct.map((x) => x.toMap())),
      };
}

class ListadoAct {
  ListadoAct({
    required this.idDePorveedorAct,
    required this.provAct,
    required this.rutAct,
    required this.correoAct,
    required this.telefonoAct,
    required this.direccionAct,
    required this.estadoAct,
  });

  int idDePorveedorAct;
  String provAct;
  String rutAct;
  String correoAct;
  String telefonoAct;
  String direccionAct;
  String estadoAct;

  factory ListadoAct.fromJson(String str) =>
      ListadoAct.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListadoAct.fromMap(Map<String, dynamic> json) => ListadoAct(
        idDePorveedorAct: json["id de Porveedor"],
        provAct: json["Prov"],
        rutAct: json["RUT"],
        correoAct: json["Correo"],
        telefonoAct: json["Telefono"],
        direccionAct: json["Direccion"],
        estadoAct: json["Estado"],
      );

  Map<String, dynamic> toMap() => {
        "id de Porveedor": idDePorveedorAct,
        "Prov": provAct,
        "RUT": rutAct,
        "Correo": correoAct,
        "Telefono": telefonoAct,
        "Direccion": direccionAct,
        "Estado": estadoAct,
      };
}

class SearchAct {
  SearchAct({
    required this.search,
  });
  String search;
  factory SearchAct.fromJson(String str) =>
      SearchAct.fromJson(json.decode(str));
  String toJson() => json.encode(toMap());
  factory SearchAct.fromMap(Map<String, dynamic> json) => SearchAct(
        search: json["SearchAct"],
      );
  Map<String, dynamic> toMap() => {
        "Search": search,
      };
}
