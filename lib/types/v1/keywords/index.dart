import 'package:json_annotation/json_annotation.dart';

part 'index.g.dart';

@JsonSerializable()
class Keywords {
  Keywords({
    required this.keywords,
    required this.meta,
  });

  List<Keyword> keywords;
  Meta meta;

  factory Keywords.fromJson(Map<String, dynamic> json) =>
      _$KeywordsFromJson(json);

  Map<String, dynamic> toJson() => _$KeywordsToJson(this);
}

@JsonSerializable()
class Keyword {
  Keyword({
    required this.crates_cnt,
    required this.created_at,
    required this.id,
    required this.keyword,
  });

  int crates_cnt;
  DateTime created_at;
  String id;
  String keyword;

  factory Keyword.fromJson(Map<String, dynamic> json) =>
      _$KeywordFromJson(json);

  Map<String, dynamic> toJson() => _$KeywordToJson(this);
}

@JsonSerializable()
class Meta {
  Meta({
    required this.total,
  });

  int total;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
