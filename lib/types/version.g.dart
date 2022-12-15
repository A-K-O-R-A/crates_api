// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Version _$VersionFromJson(Map<String, dynamic> json) => Version(
      auditActions: (json['auditActions'] as List<dynamic>?)
          ?.map((e) => AuditAction.fromJson(e as Map<String, dynamic>))
          .toList(),
      checksum: json['checksum'] as String,
      crate: json['crate'] as String,
      crateSize: json['crateSize'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      dlPath: json['dlPath'] as String?,
      downloads: json['downloads'] as int,
      features: (json['features'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      id: json['id'] as int,
      license: json['license'] as String,
      links: VersionLinks.fromJson(json['links'] as Map<String, dynamic>),
      num: json['num'] as String,
      publishedBy: json['publishedBy'] == null
          ? null
          : PublishedBy.fromJson(json['publishedBy'] as Map<String, dynamic>),
      readmePath: json['readmePath'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      yanked: json['yanked'] as bool,
    );

Map<String, dynamic> _$VersionToJson(Version instance) => <String, dynamic>{
      'auditActions': instance.auditActions,
      'checksum': instance.checksum,
      'crate': instance.crate,
      'crateSize': instance.crateSize,
      'createdAt': instance.createdAt?.toIso8601String(),
      'dlPath': instance.dlPath,
      'downloads': instance.downloads,
      'features': instance.features,
      'id': instance.id,
      'license': instance.license,
      'links': instance.links,
      'num': instance.num,
      'publishedBy': instance.publishedBy,
      'readmePath': instance.readmePath,
      'updatedAt': instance.updatedAt?.toIso8601String(),
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
  Action.PUBLISH: 'PUBLISH',
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
      versionDownloads: json['versionDownloads'] as String?,
    );

Map<String, dynamic> _$VersionLinksToJson(VersionLinks instance) =>
    <String, dynamic>{
      'authors': instance.authors,
      'dependencies': instance.dependencies,
      'versionDownloads': instance.versionDownloads,
    };
