// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authors.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Authors _$AuthorsFromJson(Map<String, dynamic> json) => Authors(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      users: json['users'] as List<dynamic>,
    );

Map<String, dynamic> _$AuthorsToJson(Authors instance) => <String, dynamic>{
      'meta': instance.meta,
      'users': instance.users,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      names: (json['names'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'names': instance.names,
    };
