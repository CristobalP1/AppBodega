// ignore_for_file: unused_local_variable, avoid_web_libraries_in_flutter, avoid_print

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/models.dart';

class ProviderService extends ChangeNotifier {
  final String _baseUrl = '157.230.213.232:8000';
  final String _user = 'test';
  final String _pass = 'test..2022';

  List<Listado> providers = []; //cargaremos el listado de provideros
  List<ListadoAct> providersAct =
      []; //cargaremos el listado de proveedores Activos
  Listado? selectedprovider; //cargaremos el providero seleccionado
  ListadoAct? selectedproviderAct; //cargaremos el proveedor Activo
  bool isLoading = true;
  bool isEditCreate = true;
  ProviderService() {
    loadProveedorInactivos();
  }

  Future loadProveedorInactivos() async {
    isLoading = true;
    final url = Uri.http(
      _baseUrl,
      'proveedores1/proveedores_proveedorinac_list_rest/',
    );
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$_user:$_pass'));
    final response = await http.get(url, headers: {'authorization': basicAuth});
    final providersMap = ProveedoresInc.fromJson(response.body);
    providers = providersMap.listado;
    print(providers.length);
    isLoading = false;
    notifyListeners();
  }

  Future<String> updateprovider(Listado provider) async {
    final url = Uri.http(
      _baseUrl,
      'proveedores1/proveedores_update_element_rest/',
    );
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$_user:$_pass'));
    final response = await http.post(url,
        body: jsonEncode({
          "proveedor_id": provider.idDePorveedor,
          "estado": provider.estado
        }),
        headers: {
          'authorization': basicAuth,
          'Content-Type': 'application/json; charset=UTF-8',
        });
    final decodeResp = response.body;
    print(decodeResp);

    //actualizamos el listado
    providers.removeWhere((element) => element.idDePorveedor == provider.idDePorveedor);
    notifyListeners();
    return '';
  }

  Future loadProveedorActivo() async {
    isLoading = true;
    final url =
        Uri.http(_baseUrl, 'proveedores1/proveedores_proveedoract_list_rest/');
    String basicAuth = 'Basic' + base64Encode(utf8.encode('$_user:$_pass'));
    final response = await http.get(url, headers: {'Authorization': basicAuth});
    final providersMap = ProveedoresAct.fromJson(response.body);
    providersAct = providersMap.listadoAct;
    print(providersAct.length);
    isLoading = false;
    notifyListeners();
  }

  Future<String> searchProviderAct(SearchAct searchAct) async {
    final url = Uri.http(
      _baseUrl,
      'proveedores1/proveedores_proveedor_list_contains',
    );
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$_user:$_pass'));
    final response = await http.post(url,
        body: jsonEncode({
          "search": " ",
        }),
        headers: {
          'authorization': basicAuth,
          'Content-Type': 'application/json; charset=UTF-8',
        });
    final decodeResp = response.body;
    print(decodeResp);
    return '';
  }
}
