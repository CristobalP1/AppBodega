import 'dart:convert';

class CategoriasActivas {
    CategoriasActivas({
       required this.listado,
    });

    List<Listado> listado;

    factory CategoriasActivas.fromJson(String str) => CategoriasActivas.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory CategoriasActivas.fromMap(Map<String, dynamic> json) => CategoriasActivas(
        listado: List<Listado>.from(json["Listado"].map((x) => Listado.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
    };
}

class Listado {
    Listado({
       required this.nombreCategoria,
    });

    String nombreCategoria;

    factory Listado.fromJson(String str) => Listado.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Listado.fromMap(Map<String, dynamic> json) => Listado(
        nombreCategoria: json["Nombre Categoria"],
    );

    Map<String, dynamic> toMap() => {
        "Nombre Categoria": nombreCategoria,
    };
}
