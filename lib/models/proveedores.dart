import 'dart:convert';

class Provider {
    Provider({
      required this.listado,
    });

    List<Listado> listado;

    factory Provider.fromJson(String str) => Provider.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Provider.fromMap(Map<String, dynamic> json) => Provider(
        listado: List<Listado>.from(json["Listado"].map((x) => Listado.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "Listado": List<dynamic>.from(listado.map((x) => x.toMap())),
    };
}

class Listado {
    Listado({
      required this.ProviderId,
      required this.ProviderNombre,
      required this.ProviderRUT,
      required this.ProviderCorreo,
      required this.ProviderTelefono,
      required this.ProviderDireccion,
      required this.ProviderEstado,
    });

    int ProviderId;
    String ProviderNombre;
    int ProviderRUT;
    String ProviderCorreo;
    int ProviderTelefono;
    String ProviderDireccion;
    String ProviderEstado;

    factory Listado.fromJson(String str) => Listado.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Listado.fromMap(Map<String, dynamic> json) => Listado(
        ProviderId: json["id de Prov"],
        ProviderNombre: json["Prov"],
        ProviderRUT: json["RUT"],
        ProviderCorreo: json["Correo"],
        ProviderTelefono: json["Telefono"],
        ProviderDireccion: json["Direccion"],
        ProviderEstado: json["Estado"]
    );

    Map<String, dynamic> toMap() => {
        "Provider_id": ProviderId,
        "Prov": ProviderNombre,
        "RUT": ProviderRUT,
        "Correo": ProviderCorreo,
        "Telefono": ProviderTelefono,
        "Direccion": ProviderDireccion,
        "Estado": ProviderEstado,
    };
}
