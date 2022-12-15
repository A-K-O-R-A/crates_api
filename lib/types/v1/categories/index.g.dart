// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
      keywords: (json['keywords'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'keywords': instance.keywords,
      'meta': instance.meta,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      category: json['category'] as String,
      crates_cnt: json['crates_cnt'] as int,
      created_at: DateTime.parse(json['created_at'] as String),
      description: json['description'] as String,
      id: json['id'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'category': instance.category,
      'crates_cnt': instance.crates_cnt,
      'created_at': instance.created_at.toIso8601String(),
      'description': instance.description,
      'id': instance.id,
      'slug': instance.slug,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      total: json['total'] as int,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'total': instance.total,
    };
