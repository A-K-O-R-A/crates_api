// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      categories: (json['categories'] as List<dynamic>)
          .map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      crate: Crate.fromJson(json['crate'] as Map<String, dynamic>),
      keywords: (json['keywords'] as List<dynamic>)
          .map((e) => Keyword.fromJson(e as Map<String, dynamic>))
          .toList(),
      versions: (json['versions'] as List<dynamic>)
          .map((e) => Version.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'categories': instance.categories,
      'crate': instance.crate,
      'keywords': instance.keywords,
      'versions': instance.versions,
    };

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      category: json['category'] as String,
      cratesCnt: json['cratesCnt'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String,
      id: json['id'] as String,
      slug: json['slug'] as String,
    );

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'category': instance.category,
      'cratesCnt': instance.cratesCnt,
      'createdAt': instance.createdAt?.toIso8601String(),
      'description': instance.description,
      'id': instance.id,
      'slug': instance.slug,
    };

Crate _$CrateFromJson(Map<String, dynamic> json) => Crate(
      badges: json['badges'] as List<dynamic>,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      description: json['description'] as String,
      documentation: json['documentation'] as String,
      downloads: json['downloads'] as int,
      exactMatch: json['exactMatch'] as bool?,
      homepage: json['homepage'],
      id: json['id'] as String,
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
      links: CrateLinks.fromJson(json['links'] as Map<String, dynamic>),
      maxStableVersion: json['maxStableVersion'] as String?,
      maxVersion: json['maxVersion'] as String?,
      name: json['name'] as String,
      newestVersion: json['newestVersion'] as String?,
      recentDownloads: json['recentDownloads'] as int?,
      repository: json['repository'] as String,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      versions:
          (json['versions'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$CrateToJson(Crate instance) => <String, dynamic>{
      'badges': instance.badges,
      'categories': instance.categories,
      'createdAt': instance.createdAt?.toIso8601String(),
      'description': instance.description,
      'documentation': instance.documentation,
      'downloads': instance.downloads,
      'exactMatch': instance.exactMatch,
      'homepage': instance.homepage,
      'id': instance.id,
      'keywords': instance.keywords,
      'links': instance.links,
      'maxStableVersion': instance.maxStableVersion,
      'maxVersion': instance.maxVersion,
      'name': instance.name,
      'newestVersion': instance.newestVersion,
      'recentDownloads': instance.recentDownloads,
      'repository': instance.repository,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'versions': instance.versions,
    };

CrateLinks _$CrateLinksFromJson(Map<String, dynamic> json) => CrateLinks(
      ownerTeam: json['ownerTeam'] as String?,
      ownerUser: json['ownerUser'] as String?,
      owners: json['owners'] as String,
      reverseDependencies: json['reverseDependencies'] as String?,
      versionDownloads: json['versionDownloads'] as String?,
      versions: json['versions'],
    );

Map<String, dynamic> _$CrateLinksToJson(CrateLinks instance) =>
    <String, dynamic>{
      'ownerTeam': instance.ownerTeam,
      'ownerUser': instance.ownerUser,
      'owners': instance.owners,
      'reverseDependencies': instance.reverseDependencies,
      'versionDownloads': instance.versionDownloads,
      'versions': instance.versions,
    };

Keyword _$KeywordFromJson(Map<String, dynamic> json) => Keyword(
      cratesCnt: json['cratesCnt'] as int?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      id: json['id'] as String,
      keyword: json['keyword'] as String,
    );

Map<String, dynamic> _$KeywordToJson(Keyword instance) => <String, dynamic>{
      'cratesCnt': instance.cratesCnt,
      'createdAt': instance.createdAt?.toIso8601String(),
      'id': instance.id,
      'keyword': instance.keyword,
    };

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
      license: $enumDecode(_$LicenseEnumMap, json['license']),
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
      'license': _$LicenseEnumMap[instance.license]!,
      'links': instance.links,
      'num': instance.num,
      'publishedBy': instance.publishedBy,
      'readmePath': instance.readmePath,
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'yanked': instance.yanked,
    };

const _$LicenseEnumMap = {
  License.mitApache20: 'MIT/Apache-2.0',
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
      login: $enumDecode(_$LoginEnumMap, json['login']),
      name: $enumDecode(_$NameEnumMap, json['name']),
      url: json['url'] as String,
    );

Map<String, dynamic> _$PublishedByToJson(PublishedBy instance) =>
    <String, dynamic>{
      'avatar': instance.avatar,
      'id': instance.id,
      'login': _$LoginEnumMap[instance.login]!,
      'name': _$NameEnumMap[instance.name]!,
      'url': instance.url,
    };

const _$LoginEnumMap = {
  Login.SEANMONSTAR: 'SEANMONSTAR',
};

const _$NameEnumMap = {
  Name.SEAN_MC_ARTHUR: 'SEAN_MC_ARTHUR',
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
