// To parse this JSON data, do
//
//     final proveedoresAct = proveedoresActFromMap(jsonString);

import 'dart:convert';

class ProveedoresAct {
    ProveedoresAct({
         required this.listado,
    });

    List<Listado> listado;

    factory ProveedoresAct.fromJson(String str) => ProveedoresAct.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory ProveedoresAct.fromMap(Map<String, dynamic> json) => ProveedoresAct(
        listado: json["Listado"]!= null ? List<Listado>.from(json["Listado"].map((x) => Listado.fromMap(x))) : [],
    );

    Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
    };
}

class Listado {
    Listado({
        required this.idDeProv,
        required this.prov,
        required this.rut,
        required this.correo,
        required this.telefono,
        required this.direccion,
        required this.estado,
    });

    int idDeProv;
    String prov;
    String rut;
    String correo;
    String telefono;
    String direccion;
    String estado;

    factory Listado.fromJson(String str) => Listado.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Listado.fromMap(Map<String, dynamic> json) => Listado(
        idDeProv: json["id de Prov"],
        prov: json["Prov"],
        rut: json["RUT"],
        correo: json["Correo"],
        telefono: json["Telefono"],
        direccion: json["Direccion"],
        estado: json["Estado"],
    );

    Map<String, dynamic> toMap() => {
        "id de Prov": idDeProv,
        "Prov": prov,
        "RUT": rut,
        "Correo": correo,
        "Telefono": telefono,
        "Direccion": direccion,
        "Estado": estado,
    };
}
