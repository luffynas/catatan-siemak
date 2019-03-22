import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Database db = DatabaseConfig.db;

class DatabaseConfig {
  static Database db;

  DatabaseConfig(){
    init();
  }

  Future init() async {
    var databasePath = await getDatabasesPath();
    String path = join(databasePath, "radar.db");
    var path2 = path;
    print("Path DB : $path2");
    try {
      db = await openDatabase(path, version: 1,
          onCreate: (Database db, int version) {
        String sqlUser =
            "CREATE TABLE User (id INTEGER PRIMARY KEY, nama TEXT, alamat TEXT, no_telepon TEXT)";
        db.execute(sqlUser);

        String book =
            "CREATE TABLE Book (id INTEGER PRIMARY KEY, nama TEXT, alamat TEXT, no_telepon TEXT)";
        db.execute(book);
      });
    } catch (e) {
      print("Error DB : $e");
    }
  }
}
