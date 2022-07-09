import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/models/models.dart';

class ProviderService{
  final String _baseUrl = '157.230.213.232:8000';
  final String _user  = 'test';
  final String _pass  = 'test..2022';

  List<Listado> providers = []; //cargaremos el listado de productos
  Listado? selectedProduct; //cargaremos el producto seleccionado
  bool isLoading = true;
  bool isEditCreate = true;
  ProviderService(){
    loadProveedorActivos();
    }

  Future loadProveedorActivos() async{
    isLoading = true;
    final url = Uri.http(_baseUrl, 'proveedores1/proveedores_proveedoract_list_rest/',);
    String basicAuth = 'Basic ' + base64Encode(utf8.encode('$_user:$_pass'));
    final response = await http.get(url,headers: {'authorization': basicAuth});
    final providersMap = Provider.fromJson(response.body);
    providers = providersMap.listado;
    isLoading = false;
     } 
  }
