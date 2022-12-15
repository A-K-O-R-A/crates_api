// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slugs.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategorySlugs _$CategorySlugsFromJson(Map<String, dynamic> json) =>
    CategorySlugs(
      categorySlugs: (json['categorySlugs'] as List<dynamic>)
          .map((e) => CategorySlug.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategorySlugsToJson(CategorySlugs instance) =>
    <String, dynamic>{
      'categorySlugs': instance.categorySlugs,
    };

CategorySlug _$CategorySlugFromJson(Map<String, dynamic> json) => CategorySlug(
      description: json['description'] as String,
      id: json['id'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$CategorySlugToJson(CategorySlug instance) =>
    <String, dynamic>{
      'description': instance.description,
      'id': instance.id,
      'slug': instance.slug,
    };
