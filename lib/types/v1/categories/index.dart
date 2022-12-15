import 'package:json_annotation/json_annotation.dart';

part 'index.g.dart';

@JsonSerializable()
class Categories {
  Categories({
    required this.categories,
    required this.meta,
  });

  List<Category> categories;
  Meta meta;

  factory Categories.fromJson(Map<String, dynamic> json) =>
      _$CategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$CategoriesToJson(this);
}

@JsonSerializable()
class Category {
  Category({
    required this.category,
    required this.crates_cnt,
    required this.created_at,
    required this.description,
    required this.id,
    required this.slug,
  });

  final String category;
  final int crates_cnt;
  final DateTime created_at;
  final String description;
  final String id;
  final String slug;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
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
