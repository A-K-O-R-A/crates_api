// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Keywords _$KeywordsFromJson(Map<String, dynamic> json) => Keywords(
      keywords: (json['keywords'] as List<dynamic>)
          .map((e) => Keyword.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$KeywordsToJson(Keywords instance) => <String, dynamic>{
      'keywords': instance.keywords,
      'meta': instance.meta,
    };

Keyword _$KeywordFromJson(Map<String, dynamic> json) => Keyword(
      crates_cnt: json['crates_cnt'] as int,
      created_at: DateTime.parse(json['created_at'] as String),
      id: json['id'] as String,
      keyword: json['keyword'] as String,
    );

Map<String, dynamic> _$KeywordToJson(Keyword instance) => <String, dynamic>{
      'crates_cnt': instance.crates_cnt,
      'created_at': instance.created_at.toIso8601String(),
      'id': instance.id,
      'keyword': instance.keyword,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      total: json['total'] as int,
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'total': instance.total,
    };
