import 'dart:async';
import 'package:first_app/sign%20up%20and%20log%20in/User_data.dart';
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

  static Future<int> insertUserData(UserData userData) async {
    Database db = await DatabaseHelper().database;
    int result = await db.insert('users', userData.toMap());
    return result;
  }

  static Future<List<UserData>> getUserDataList() async {
    Database db = await DatabaseHelper().database;
    List<Map<String, dynamic>> maps = await db.query('users');
    return List.generate(maps.length, (i) {
      return UserData(
        nickname: maps[i]['nickname'],
        name: maps[i]['name'],
        surname: maps[i]['surname'],
        birth_date: maps[i]['birth_date'],
        address: maps[i]['address'],
        email: maps[i]['email'],
        password: maps[i]['password'],
      );
    });
  }
}
