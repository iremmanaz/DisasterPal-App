import 'package:first_app/sign%20up%20and%20log%20in/User_data.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  DatabaseHelper._privateConstructor();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'my_database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _createDatabase,
    );
  }

  Future<void> _createDatabase(Database db, int version) async {
    await db.execute('''
      CREATE TABLE users(
        id INTEGER PRIMARY KEY,
        membershipType TEXT,
        nickname TEXT,
        name TEXT,
        surname TEXT,
        birth_date TEXT,
        address TEXT,
        email TEXT,
        password TEXT
      )
    ''');
  }

  Future<int> insertUser(UserData user) async {
    Database db = await instance.database;
    return await db.insert('users', user.toMap());
  }

  Future<List<UserData>> getUsers() async {
    Database db = await instance.database;
    List<Map<String, dynamic>> maps = await db.query('users');
    return List.generate(maps.length, (i) {
      return UserData(
        membershipType: maps[i]['membershipType'],
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

  // Additional database operations (update, delete, query) can be added here.
}
