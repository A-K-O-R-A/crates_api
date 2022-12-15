// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dependencies.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dependencies _$DependenciesFromJson(Map<String, dynamic> json) => Dependencies(
      dependencies: (json['dependencies'] as List<dynamic>)
          .map((e) => Dependency.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DependenciesToJson(Dependencies instance) =>
    <String, dynamic>{
      'dependencies': instance.dependencies,
    };

Dependency _$DependencyFromJson(Map<String, dynamic> json) => Dependency(
      crate_id: json['crate_id'] as String,
      default_features: json['default_features'] as bool,
      downloads: json['downloads'] as int,
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
      id: json['id'] as int,
      kind: $enumDecode(_$KindEnumMap, json['kind']),
      optional: json['optional'] as bool,
      req: json['req'] as String,
      target: json['target'],
      version_id: json['version_id'] as int,
    );

Map<String, dynamic> _$DependencyToJson(Dependency instance) =>
    <String, dynamic>{
      'crate_id': instance.crate_id,
      'default_features': instance.default_features,
      'downloads': instance.downloads,
      'features': instance.features,
      'id': instance.id,
      'kind': _$KindEnumMap[instance.kind]!,
      'optional': instance.optional,
      'req': instance.req,
      'target': instance.target,
      'version_id': instance.version_id,
    };

const _$KindEnumMap = {
  Kind.normal: 'normal',
  Kind.dev: 'dev',
};
