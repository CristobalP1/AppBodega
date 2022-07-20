import 'package:flutter/material.dart';

class Products {
  String descripcion;
  String stock;

  Products({required this.descripcion, required this.stock});

  static List<Products> getProductos() {
    return <Products>[
      Products(
        descripcion: 'Leche avellana',
        stock: '0',
      ),
      Products(
        descripcion: 'Leche coco',
        stock: '0',
      ),
      Products(
        descripcion: 'Leche arroz',
        stock: '0',
      ),
      Products(
        descripcion: 'Lonco soya',
        stock: '0',
      ),
      Products(
        descripcion: 'Leche vegetal',
        stock: '0',
      ),
      Products(
        descripcion: 'Leche surlat',
        stock: '0',
      ),
      Products(
        descripcion: 'Leche not milk',
        stock: '0',
      ),
    ];
  }
}
