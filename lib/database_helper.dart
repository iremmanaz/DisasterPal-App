import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper; // Singleton DatabaseHelper
  static Database? _database; // Singleton Database

  String tableName = 'users';
  String colId = 'id';
  String colUsername = 'username';
  String colPassword = 'password';

  DatabaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper
          ._createInstance(); // This is executed only once, singleton object
    }
    return _databaseHelper!;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database!;
  }

  Future<Database> initializeDatabase() async {
    String databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'app.db');
    var database = await openDatabase(path, version: 1, onCreate: _createDb);
    return database;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        'CREATE TABLE $tableName($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colUsername TEXT, '
        '$colPassword TEXT)');
  }

  Future<int> insertUser(Map<String, dynamic> user) async {
    Database db = await this.database;
    int result = await db.insert(tableName, user);
    return result;
  }

  Future<List<Map<String, dynamic>>> getUsers() async {
    Database db = await this.database;
    var result = await db.query(tableName);
    return result;
  }

  Future<int> updateUser(Map<String, dynamic> user) async {
    Database db = await this.database;
    int result = await db
        .update(tableName, user, where: '$colId = ?', whereArgs: [user[colId]]);
    return result;
  }

  Future<int> deleteUser(int id) async {
    Database db = await this.database;
    int result =
        await db.rawDelete('DELETE FROM $tableName WHERE $colId = $id');
    return result;
  }

  Future<int> getCount() async {
    Database db = await this.database;
    List<Map<String, dynamic>> x =
        await db.rawQuery('SELECT COUNT (*) from $tableName');
    int result = Sqflite.firstIntValue(x)!;
    return result;
  }
}

class User {
  String email;
  String password;

  User({required this.email, required this.password});

  static List<User> getUsers() {
    return [
      User(email: 'iremmanaz@hotmail.com', password: '123456'),
      // Add more registered users here if needed
    ];
  }
}
