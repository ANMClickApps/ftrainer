import 'package:ftrainer/db/sql_helper.dart';
import 'package:ftrainer/db/sql_result_model.dart';

class DBService {
  Future<bool> addResult(SQLResultModel model) async {
    await SQLHelper.init();
    bool isSaved = false;
    int inserted = await SQLHelper.insert(SQLResultModel.table, model);
    if (inserted == 1) {
      var rows = await SQLHelper.query(SQLResultModel.table);
      isSaved = rows.length == 1 ? true : false;
    } else {
      isSaved = true;
    }

    return isSaved;
  }

  Future<List<SQLResultModel>> getResults() async {
    await SQLHelper.init();
    List<Map<String, dynamic>> results =
        await SQLHelper.query(SQLResultModel.table);

    return results.map((item) => SQLResultModel.fromMap(item)).toList();
  }
}
