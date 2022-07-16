// To parse this JSON data, do
//
//     final proveedoresAct = proveedoresActFromMap(jsonString);

import 'dart:convert';

class ProveedoresAct {
  ProveedoresAct({
    required this.listado,
    required this.search,
  });

  List<ListadoAct> listado;
  List<SearchAct> search;

  factory ProveedoresAct.fromJson(String str) =>
      ProveedoresAct.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ProveedoresAct.fromMap(Map<String, dynamic> json) => ProveedoresAct(
        listado: List<ListadoAct>.from(
            json["ListadoAct"].map((x) => ListadoAct.fromMap(x))),
        search: List<SearchAct>.from(
            json["SearchAct"].map((x) => SearchAct.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
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

class ListadoAct {
  ListadoAct({
    required this.idDePorveedor,
    required this.prov,
    required this.rut,
    required this.correo,
    required this.telefono,
    required this.direccion,
    required this.estado,
  });

  int idDePorveedor;
  String prov;
  String rut;
  String correo;
  String telefono;
  String direccion;
  String estado;

  factory ListadoAct.fromJson(String str) =>
      ListadoAct.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ListadoAct.fromMap(Map<String, dynamic> json) => ListadoAct(
        idDePorveedor: json["id de Porveedor"],
        prov: json["Prov"],
        rut: json["RUT"],
        correo: json["Correo"],
        telefono: json["Telefono"],
        direccion: json["Direccion"],
        estado: json["Estado"],
      );

  Map<String, dynamic> toMap() => {
        "id de Porveedor": idDePorveedor,
        "Prov": prov,
        "RUT": rut,
        "Correo": correo,
        "Telefono": telefono,
        "Direccion": direccion,
        "Estado": estado,
      };
}
