import 'package:note_taking_app/models/note.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

final String dbName = "notes.db";
final String table = "notes";

class DatabaseHelper {
  //singleton pattern - only one instance
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  //GET DATABASE INSTANCE
  Future<Database> get getDatabase async {
    if (_database != null) return _database!;
    _database = await _initDB(dbName);
    return _database!;
  }

  // Initialize database
  Future<Database> _initDB(String filepath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filepath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    await db.execute(
      '''CREATE TABLE $table(id INTEGER PRIMARY KEY AUTOINCREMENT, title TEXT NOT NULL, content TEXT NOT NULL, created_at TEXT NOT NULL, modified_at TEXT NOT NULL, color TEXT, tags TEXT)''',
    );
  }

  //INSERT Note

  Future<int> createNote(Note note) async {
    final db = await getDatabase;
    return await db.insert(table, note.toMap());
  }

  //READ - all notes

  Future<List<Note>> getAllNotes() async {
    final db = await getDatabase;
    final List<Map<String, dynamic>> maps = await db.query(
      table,
      orderBy: 'modified_at DESC',
    );

    return List.generate(maps.length, (index) => Note.fromMap(maps[index]));
  }

  //UPDATE Note
  Future<int> updateNote(Note note) async {
    final db = await getDatabase;
    return await db.update(
      table,
      note.toMap(),
      where: 'id=?',
      whereArgs: [note.id],
    );
  }

  //DELETE Note
  Future<int> deleteNote(Note note) async {
    final db = await getDatabase;
    return await db.delete(table, where: 'id=?', whereArgs: [note.id]);
  }
}
