import 'package:json_annotation/json_annotation.dart';
import 'index.dart';

part 'show.g.dart';

@JsonSerializable()
class ShowKeyword {
  ShowKeyword({
    required this.keyword,
  });

  Keyword keyword;

  factory ShowKeyword.fromJson(Map<String, dynamic> json) =>
      _$ShowKeywordFromJson(json);

  Map<String, dynamic> toJson() => _$ShowKeywordToJson(this);
}
