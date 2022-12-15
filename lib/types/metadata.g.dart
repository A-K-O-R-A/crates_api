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
