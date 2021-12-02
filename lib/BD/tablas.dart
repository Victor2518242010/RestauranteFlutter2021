/*
import 'dart:html';

import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sql.dart';
import 'package:sqflite_common/sql.dart';
import 'package:sqflite/utils/utils.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';

class Mesa {
  final int idMesa;

  Mesa({required this.idMesa});

  Map<String, dynamic> toMap() {
    return {'idMesa': idMesa};
  }

  @override
  String toString() {
    return 'Mesa{id: $idMesa}';
  }
}

class Ensalada {
  int idEnsalada;
  String nombre;
  String descripcion;
  int precio;

  Ensalada(
      {required this.idEnsalada,
      required this.nombre,
      required this.descripcion,
      required this.precio});

  Map<String, dynamic> toMap() {
    return {
      'idEnsalada': idEnsalada,
      'nombre': nombre,
      'descripcion': descripcion,
      'precio': precio
    };
  }
}

class Carne {
  int idCarne;
  String nombre;
  String descripcion;
  int precio;

  Carne(
      {required this.idCarne,
      required this.nombre,
      required this.descripcion,
      required this.precio});

  Map<String, dynamic> toMap() {
    return {
      'idCarne': idCarne,
      'nombre': nombre,
      'descripcion': descripcion,
      'precio': precio
    };
  }
}

class Pasta {
  int idPasta;
  String nombre;
  String descripcion;
  int precio;

  Pasta(
      {required this.idPasta,
      required this.nombre,
      required this.descripcion,
      required this.precio});

  Map<String, dynamic> toMap() {
    return {
      'idCarne': idPasta,
      'nombre': nombre,
      'descripcion': descripcion,
      'precio': precio
    };
  }
}

class Bebida {
  int idBebida;
  String nombre;
  String descripcion;
  int precio;

  Bebida(
      {required this.idBebida,
      required this.nombre,
      required this.descripcion,
      required this.precio});

  Map<String, dynamic> toMap() {
    return {
      'idCarne': idBebida,
      'nombre': nombre,
      'descripcion': descripcion,
      'precio': precio
    };
  }
}
*/