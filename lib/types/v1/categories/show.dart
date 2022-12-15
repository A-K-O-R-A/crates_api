// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'show.g.dart';

@JsonSerializable()
class ShowCategory {
  ShowCategory({
    required this.category,
  });

  DetailedCategory category;

  factory ShowCategory.fromJson(Map<String, dynamic> json) =>
      _$ShowCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$ShowCategoryToJson(this);
}

@JsonSerializable()
class DetailedCategory {
  DetailedCategory({
    required this.category,
    required this.crates_cnt,
    required this.created_at,
    required this.description,
    required this.id,
    required this.parent_categories,
    required this.slug,
    required this.subcategories,
  });

  String category;
  int crates_cnt;
  DateTime created_at;
  String description;
  String id;
  List<dynamic> parent_categories;
  String slug;
  List<DetailedCategory> subcategories;

  factory DetailedCategory.fromJson(Map<String, dynamic> json) =>
      _$DetailedCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$DetailedCategoryToJson(this);
}
