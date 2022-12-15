// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionEndpoint _$VersionEndpointFromJson(Map<String, dynamic> json) =>
    VersionEndpoint(
      version: Version.fromJson(json['version'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VersionEndpointToJson(VersionEndpoint instance) =>
    <String, dynamic>{
      'version': instance.version,
    };

CrateVersionsEndpoint _$CrateVersionsEndpointFromJson(
        Map<String, dynamic> json) =>
    CrateVersionsEndpoint(
      versions: (json['versions'] as List<dynamic>)
          .map((e) => Version.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CrateVersionsEndpointToJson(
        CrateVersionsEndpoint instance) =>
    <String, dynamic>{
      'versions': instance.versions,
    };

Version _$VersionFromJson(Map<String, dynamic> json) => Version(
      audit_actions: (json['audit_actions'] as List<dynamic>)
          .map((e) => AuditAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      checksum: json['checksum'] as String,
      crate: json['crate'] as String,
      crate_size: json['crate_size'] as int?,
      created_at: DateTime.parse(json['created_at'] as String),
      dl_path: json['dl_path'] as String,
      downloads: json['downloads'] as int,
      features: (json['features'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      id: json['id'] as int,
      license: json['license'] as String,
      links: VersionLinks.fromJson(json['links'] as Map<String, dynamic>),
      num: json['num'] as String,
      published_by: json['published_by'] == null
          ? null
          : PublishedBy.fromJson(json['published_by'] as Map<String, dynamic>),
      readme_path: json['readme_path'] as String,
      updated_at: DateTime.parse(json['updated_at'] as String),
      yanked: json['yanked'] as bool,
    );

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'audit_actions': instance.audit_actions,
      'checksum': instance.checksum,
      'crate': instance.crate,
      'crate_size': instance.crate_size,
      'created_at': instance.created_at.toIso8601String(),
      'dl_path': instance.dl_path,
      'downloads': instance.downloads,
      'features': instance.features,
      'id': instance.id,
      'license': instance.license,
      'links': instance.links,
      'num': instance.num,
      'published_by': instance.published_by,
      'readme_path': instance.readme_path,
      'updated_at': instance.updated_at.toIso8601String(),
      'yanked': instance.yanked,
    };

AuditAction _$AuditActionFromJson(Map<String, dynamic> json) => AuditAction(
      action: $enumDecode(_$ActionEnumMap, json['action']),
      time: DateTime.parse(json['time'] as String),
      user: PublishedBy.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AuditActionToJson(AuditAction instance) =>
    <String, dynamic>{
      'action': _$ActionEnumMap[instance.action]!,
      'time': instance.time.toIso8601String(),
      'user': instance.user,
    };

const _$ActionEnumMap = {
  Action.publish: 'publish',
};

PublishedBy _$PublishedByFromJson(Map<String, dynamic> json) => PublishedBy(
      avatar: json['avatar'] as String,
      id: json['id'] as int,
      login: json['login'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PublishedByToJson(PublishedBy instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'id': instance.id,
      'login': instance.login,
      'name': instance.name,
      'url': instance.url,
    };

VersionLinks _$VersionLinksFromJson(Map<String, dynamic> json) => VersionLinks(
      authors: json['authors'] as String,
      dependencies: json['dependencies'] as String,
      version_downloads: json['version_downloads'] as String,
    );

Map<String, dynamic> _$VersionLinksToJson(VersionLinks instance) =>
    <String, dynamic>{
      'authors': instance.authors,
      'dependencies': instance.dependencies,
      'version_downloads': instance.version_downloads,
    };
