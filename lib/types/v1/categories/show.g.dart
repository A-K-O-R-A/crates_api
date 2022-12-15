// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowCategory _$ShowCategoryFromJson(Map<String, dynamic> json) => ShowCategory(
      category:
          DetailedCategory.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShowCategoryToJson(ShowCategory instance) =>
    <String, dynamic>{
      'category': instance.category,
    };

DetailedCategory _$DetailedCategoryFromJson(Map<String, dynamic> json) =>
    DetailedCategory(
      category: json['category'] as String,
      crates_cnt: json['crates_cnt'] as int,
      created_at: DateTime.parse(json['created_at'] as String),
      description: json['description'] as String,
      id: json['id'] as String,
      parent_categories: json['parent_categories'] as List<dynamic>,
      slug: json['slug'] as String,
      subcategories: (json['subcategories'] as List<dynamic>)
          .map((e) => DetailedCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DetailedCategoryToJson(DetailedCategory instance) =>
    <String, dynamic>{
      'category': instance.category,
      'crates_cnt': instance.crates_cnt,
      'created_at': instance.created_at.toIso8601String(),
      'description': instance.description,
      'id': instance.id,
      'parent_categories': instance.parent_categories,
      'slug': instance.slug,
      'subcategories': instance.subcategories,
    };
