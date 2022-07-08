import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/provider_active_category_list.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
class ListCategoryProvider extends ChangeNotifier{
  String APIUSER = 'test';
  String APIPASS = 'test..2022';
  String BASEURL = '157.230.213.232:8000';
  List<Listado> ListCategorias = [];

ListCategoryProvider(){
  getList();
  }
  
  getList() async{
    var url = Uri.http(BASEURL, 'categorias/categoria_listar/',);
    String basicauth = 'Basic ' + base64Encode(utf8.encode('$APIUSER:$APIPASS'));
final response = await http.get(url,headers: {'authorization': basicauth});

final listadoCategorias = CategoriasActivas.fromJson(response.body);
ListCategorias = listadoCategorias.listado;
notifyListeners();
  } 
}