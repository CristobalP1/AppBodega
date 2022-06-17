import 'package:flutter/material.dart';

class Products {
  bool selected;
  String descripcion;
  String stock;
  String info;

  Products(
      {required this.descripcion,
      required this.selected,
      required this.stock,
      required this.info});

  static List<Products> getProductos() {
    return <Products>[
      Products(
        descripcion: 'Leche milo',
        selected: false,
        stock: '1',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche colun',
        selected: false,
        stock: '2',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche nestle',
        selected: false,
        stock: '3',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Lonco leche',
        selected: false,
        stock: '0',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche cuisine & co',
        selected: false,
        stock: '0',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche surlat',
        selected: false,
        stock: '0',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche soprole',
        selected: false,
        stock: '12',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche moment danone',
        selected: false,
        stock: '12',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche vilay',
        selected: false,
        stock: '14',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Lonco leche',
        selected: false,
        stock: '1',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Lonco leche',
        selected: false,
        stock: '1',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Lonco leche',
        selected: false,
        stock: '1',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Lonco leche',
        selected: false,
        stock: '1',
        info: 'Ver mas',
      ),
    ];
  }
}
