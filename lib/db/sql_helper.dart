import 'package:ftrainer/db/sql_result_model.dart';
import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart';

class SQLHelper {
  static Database? _database;

  static int get _version => 1;

  static Future<void> init() async {
    if (_database != null) {
      return;
    }

    try {
      var databasesPath = await getDatabasesPath();
      String _path = p.join(databasesPath, 'crud.db');
      _database =
          await openDatabase(_path, version: _version, onCreate: _onCreate);
    } catch (ex) {
      print(ex);
    }
  }

  static void _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE results (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            result STRING NOT NULL,
            exerciseId INTEGER NOT NULL,
            createAt INTEGER NOT NULL
          )
          ''');
    // await db.execute(
    //     'CREATE TABLE exercises (id INTEGER PRIMARY KEY AUTOINCREMENT, exerciseName STRING)');
    // await db.execute(
    //     "INSERT INTO results (result) VALUES ('Отжимания от пола'), ('Сведения на грудь'), ('Жим штанги лежа'), ('Подъемы штанги на бицепс'), ('Подъём на бицепс в скамье Смитта'), ('Приседания со штангой'), ('Разгибания ног в тренажере'), ('Выпады'), ('Обратные отжимания на скамье'), ('Подъемы гантелей в стороны'), ('Подъемы гантелей перед собой'), ('Жим гантелей сидя'), ('Обратные разгибания на трицепс'), ('Жим на трицепс из-за головы'), ('Подъемы гантелей через стороны'), ('Подъем гантелей к подбородку'), ('Подтягивания'), ('Тяга верхнего блока'), ('Тяга гантели к поясу'), ('Тяга нижнего блока'), ('Велосипед на пресс'), ('Скручивания на скамье'), ('Планка'), ('Гиперэкстензия');");

    // await db
    //     .execute("INSERT INTO results (result) VALUES ('1'), ('2'), ('3');");
  }

  static Future<List<Map<String, dynamic>>> query(String table) async =>
      _database!.query(table);
//Result model
  static Future<int> insert(String table, SQLResultModel model) async =>
      await _database!.insert(table, model.toMap());

  static Future<int> update(String table, SQLResultModel model) async =>
      await _database!
          .update(table, model.toMap(), where: 'id = ?', whereArgs: [model.id]);

  static Future<int> delete(String table, SQLResultModel model) async =>
      await _database!.delete(table, where: 'id = ?', whereArgs: [model.id]);

  static Future<Batch> batch() async => _database!.batch();
}
