import 'dart:convert';

class SQLResultModel {
  static String table = 'results';

  final int? id;
  final String result;
  final int exerciseId;
  final int createAt;

  SQLResultModel({
    required this.createAt,
    this.id,
    required this.result,
    required this.exerciseId,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'result': result,
      'exerciseId': exerciseId,
      'createAt': createAt,
    };
  }

  factory SQLResultModel.fromMap(Map<String, dynamic> map) {
    return SQLResultModel(
      id: map['id']?.toInt(),
      result: map['result'] ?? '',
      exerciseId: map['exerciseId']?.toInt() ?? 0,
      createAt: map['createAt']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory SQLResultModel.fromJson(String source) =>
      SQLResultModel.fromMap(json.decode(source));
}
