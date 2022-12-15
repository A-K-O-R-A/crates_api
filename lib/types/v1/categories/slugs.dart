import 'package:json_annotation/json_annotation.dart';
import 'index.dart';

part 'slugs.g.dart';

@JsonSerializable()
class CategorySlugs {
  CategorySlugs({
    required this.categorySlugs,
  });

  List<CategorySlug> categorySlugs;

  factory CategorySlugs.fromJson(Map<String, dynamic> json) =>
      _$CategorySlugsFromJson(json);

  Map<String, dynamic> toJson() => _$CategorySlugsToJson(this);
}

@JsonSerializable()
class CategorySlug {
  CategorySlug({
    required this.description,
    required this.id,
    required this.slug,
  });

  String description;
  String id;
  String slug;

  factory CategorySlug.fromJson(Map<String, dynamic> json) =>
      _$CategorySlugFromJson(json);

  Map<String, dynamic> toJson() => _$CategorySlugToJson(this);
}
