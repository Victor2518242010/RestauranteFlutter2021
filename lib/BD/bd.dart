/*
import 'package:sqflite/sqflite.dart';
import 'tablas.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:flutter/widgets.dart';

class DB {

  //final database = openDatabase(join(await getDatabasesPath(), 'tablas.db'),
  final database = openDatabase(join(await getDatabasesPath(), '/tablas.db'),
  onCreate: (db, version) {
    // Run the CREATE TABLE statement on the database.
    return db.execute(
      'CREATE TABLE mesa(idMesa INTEGER PRIMARY KEY\)',
    );
  },
  // Set the version. This executes the onCreate function and provides a
  // path to perform database upgrades and downgrades.
  version: 1
  );

  Future<void> insertMesa(Mesa mesa) async {
  // Get a reference to the database.
  final db = await database;

  // Insert the Dog into the correct table. You might also specify the
  // `conflictAlgorithm` to use in case the same dog is inserted twice.
  //
  // In this case, replace any previous data.
  await db.insert(
    'mesa',
    mesa.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}
}



  static Future<Database> _openDB() async {
      WidgetsFlutterBinding.ensureInitialized();

    return openDatabase(join(await getDatabasesPath(), 'tablas.db'),
        onCreate: (db, version) {
      return db.execute(
        "create table mesa(idMesa INTERGER PRIMARY KEY)",
      );
    }, version: 1);
  }

  
  static Future<void> insertMesa(Mesa mesa) async {
    final  database = await _openDB();

    return database.insert('mesa', mesa.toMap(), conflictAlgorithm: ConflictAlgorithm.replace,)
  }

  static Future<void> delete(Mesa mesa) async {
    Database database = await _openDB();

    return database.delete("mesa", mesa.toMap(), where: "idMesa = ?", whereArgs: [mesa.idMesa])
  }  

  static Future<void> update(Mesa mesa) async {
    Database database = await _openDB();

    return database.update("mesa", mesa.toMap(), where: "idMesa = ?", whereArgs: [mesa.idMesa])
  } 

  static Future<List<Mesa>> mesa() async {
    Database database = await _openDB();
    final List<Map<String, dynamic>> mesaMap = await database.query("mesa");

    return List.generate(mesaMap.length, 
    (i) => Mesa(
      idMesa:  mesaMap[i]['idMesa'],
    ));
  }
}
*/