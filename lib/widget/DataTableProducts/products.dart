import 'package:flutter/material.dart';

class Products {
  String descripcion;
  String stock;
  String info;

  Products(
      {required this.descripcion, required this.stock, required this.info});

  static List<Products> getProductos() {
    return <Products>[
      Products(
        descripcion: 'Leche milo',
        stock: '1',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche colun',
        stock: '2',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche nestle',
        stock: '3',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Lonco leche',
        stock: '0',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche cuisine & co',
        stock: '0',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche surlat',
        stock: '0',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche soprole',
        stock: '12',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche moment danone',
        stock: '12',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Leche vilay',
        stock: '14',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Lonco leche',
        stock: '1',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Lonco leche',
        stock: '1',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Lonco leche',
        stock: '1',
        info: 'Ver mas',
      ),
      Products(
        descripcion: 'Lonco leche',
        stock: '1',
        info: 'Ver mas',
      ),
    ];
  }
}
