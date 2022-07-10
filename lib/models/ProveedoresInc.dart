// To parse this JSON data, do
//
//     final proveedoresInc = proveedoresIncFromMap(jsonString);

import 'dart:convert';

class ProveedoresInc {
    ProveedoresInc({
         required this.listado,
    });

    List<Listado> listado;

    factory ProveedoresInc.fromJson(String str) => ProveedoresInc.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProveedoresInc.fromMap(Map<String, dynamic> json) => ProveedoresInc(
        listado: List<Listado>.from(json["Listado"].map((x) => Listado.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
    };
}

class Listado {
    Listado({
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

    factory Listado.fromJson(String str) => Listado.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Listado.fromMap(Map<String, dynamic> json) => Listado(
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
