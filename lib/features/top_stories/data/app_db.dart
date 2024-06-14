import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:intl/intl.dart';

import 'models/section_model.dart';
import 'models/top_stories_db_model.dart';
import 'models/top_stories_model.dart';

class TopStoriesDatabase {
  static final TopStoriesDatabase instance = TopStoriesDatabase._internal();

  static Database? _database;

  TopStoriesDatabase._internal();

  Future<Database> get database async {
    if (_database != null) {
      return _database!;
    }

    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, 'stories.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) {
        _createDatabase(db);
      },
      onOpen: (Database db) async {
/*
        await db.execute('''DROP TABLE if exists topstories''');
        await db.execute('''DROP TABLE if exists sections''');
        await db.execute('''DROP TABLE if exists stories''');
        await db.execute('''DROP TABLE if exists multimedia''');
        await _createDatabase(db);
*/
      },
    );
  }

  Future<void> _createDatabase(Database db) async {
    await db.execute('''
        CREATE TABLE topstories (
          status TEXT,
          copyright TEXT,
          section TEXT,
          last_updated TEXT,
          num_results INTEGER
        )
      ''');
    await db.execute('''
        CREATE TABLE sections (
          section TEXT,
          favorite INTEGER,
          UNIQUE(section)
        )
      ''');
//    await db.execute('''DROP TABLE stories''');
    await db.execute('''
        CREATE TABLE stories (
          topSection TEXT,
          section TEXT,
          subsection TEXT,
          title TEXT,
          abstract TEXT,
          url TEXT,
          uri TEXT,
          byline TEXT,
          item_type TEXT,
          updated_date TEXT,
          created_date TEXT,
          published_date TEXT,
          material_type_facet TEXT,
          kicker TEXT,
          short_url TEXT
        )
      ''');
//    await db.execute('''DROP TABLE multimedia''');
    await db.execute('''
        CREATE TABLE multimedia (
          uri TEXT,
          topSection TEXT,
          url TEXT,
          format TEXT,
          height INTEGER,
          width INTEGER,
          type TEXT,
          subtype TEXT,
          caption TEXT,
          copyright TEXT
        )
      ''');
  }

  Future<void> insert(TopStoriesModel topStories, String topSection) async {
    final db = await instance.database;
    await db.insert('topstories', topStories.toTopStoriesDB(topSection).toJson());
    for (var result in topStories.results) {
      await db.insert('stories', result.toResultDB(topSection).toJson());
      if (result.section.isNotEmpty) {
        await insertSections(result.section);
      }
      final multimedia = result.toMultimediaDB(topSection);
      for (var m in multimedia) {
        await db.insert('multimedia', m.toJson());
      }
    }
  }

  Future<void> insertSections(String section) async {
    final db = await instance.database;
    db.rawInsert('INSERT OR IGNORE INTO sections(section, favorite) VALUES(?, ?)', [section, '0']);
  }

  Future<void> updateSections(String section, int favorite) async {
    final db = await instance.database;
    db.rawUpdate('UPDATE sections SET favorite = ? WHERE section = ?', [favorite, section]);
  }

  String filterSql({required bool showNew, required String section, required String title, required int limit, required int offset}) {
    final date = DateFormat('yyyy-MM-d').format(DateTime.now());
    if (showNew) {
      if (section.isNotEmpty || title.isNotEmpty) {
        if (section.isNotEmpty && title.isNotEmpty) {
          return "select * from stories where updated_date like '%$date%' and section = '$section' and title like '%$title%' limit $limit offset $offset";
        } else if (section.isNotEmpty) {
          return "select * from stories where updated_date like '%$date%' and section = '$section' limit $limit offset $offset";
        } else if (title.isNotEmpty) {
          return "select * from stories where updated_date like '%$date%' and title like '%$title%' limit $limit offset $offset";
        }
      }
      return "select * from stories where updated_date like '%$date%' limit $limit offset $offset";
    } else {
      if (section.isNotEmpty || title.isNotEmpty) {
        if (section.isNotEmpty && title.isNotEmpty) {
          return "select * from stories where section = '$section' and title like '%$title%' limit $limit offset $offset";
        } else if (section.isNotEmpty) {
          return "select * from stories where section = '$section' limit $limit offset $offset";
        } else if (title.isNotEmpty) {
          return "select * from stories where title like '%$title%' limit $limit offset $offset";
        }
      }
    }
    return 'select * from stories limit $limit offset $offset';
  }

  Future<List<ResultView>> read(String sql) async {
    final db = await instance.database;
    List<Map<String, Object?>> result = [];
    result = await db.rawQuery(sql);
    final listResult = result.map((json) => ResultDB.fromJson(json)).toList();
    final List<ResultView> list = [];
    for (var result in listResult) {
      list.add(ResultView(result: result, multimedia: await readMultimedia(result.uri)));
    }
    return list;
  }

  Future<TopStoriesDB?> readTopStories(String topSection) async {
    final db = await instance.database;
    final result = await db.query('topstories', where: 'section = ?', whereArgs: [topSection]);
    final list = result.map((json) => TopStoriesDB.fromJson(json)).toList();
    if (list.isNotEmpty) {
      return list.first;
    }
    return null;
  }

  Future<void> deleteTopStories(String topSection) async {
    final db = await instance.database;
    await db.rawDelete('delete from topstories where section = ?', [topSection]);
    await db.rawDelete('delete from stories where topstories = ?', [topSection]);
    await db.rawDelete('delete from multimedia where topstories = ?', [topSection]);
  }

  Future<List<SectionModel>> readSections() async {
    final db = await instance.database;
    final result = await db.query('sections');
    final list = result.map((json) => SectionModel.fromJson(json)).toList();
    return list;
  }

  Future<List<MultimediaDB>> readMultimedia(String uri) async {
    final db = await instance.database;
    final result = await db.query('multimedia', where: 'uri = ?', whereArgs: [uri]);
    return result.map((json) => MultimediaDB.fromJson(json)).toList();
  }

  Future<int?> count() async {
    final db = await instance.database;
    var result = await db.rawQuery('SELECT COUNT(*) FROM stories');
    int? count = Sqflite.firstIntValue(result);
    return count;
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
