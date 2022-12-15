// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metadata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrateMetadata _$CrateMetadataFromJson(Map<String, dynamic> json) =>
    CrateMetadata(
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

Map<String, dynamic> _$CrateMetadataToJson(CrateMetadata instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'crate': instance.crate,
      'keywords': instance.keywords,
      'versions': instance.versions,
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

Crate _$CrateFromJson(Map<String, dynamic> json) => Crate(
      badges: json['badges'] as List<dynamic>,
      categories: (json['categories'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      created_at: DateTime.parse(json['created_at'] as String),
      description: json['description'] as String,
      documentation: json['documentation'] as String?,
      downloads: json['downloads'] as int,
      exact_match: json['exact_match'] as bool,
      homepage: json['homepage'],
      id: json['id'] as String,
      keywords:
          (json['keywords'] as List<dynamic>).map((e) => e as String).toList(),
      links: CrateLinks.fromJson(json['links'] as Map<String, dynamic>),
      max_stable_version: json['max_stable_version'] as String,
      max_version: json['max_version'] as String,
      name: json['name'] as String,
      newest_version: json['newest_version'] as String,
      recent_downloads: json['recent_downloads'] as int,
      repository: json['repository'] as String,
      updated_at: DateTime.parse(json['updated_at'] as String),
      versions:
          (json['versions'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$CrateToJson(Crate instance) => <String, dynamic>{
      'badges': instance.badges,
      'categories': instance.categories,
      'created_at': instance.created_at.toIso8601String(),
      'description': instance.description,
      'documentation': instance.documentation,
      'downloads': instance.downloads,
      'exact_match': instance.exact_match,
      'homepage': instance.homepage,
      'id': instance.id,
      'keywords': instance.keywords,
      'links': instance.links,
      'max_stable_version': instance.max_stable_version,
      'max_version': instance.max_version,
      'name': instance.name,
      'newest_version': instance.newest_version,
      'recent_downloads': instance.recent_downloads,
      'repository': instance.repository,
      'updated_at': instance.updated_at.toIso8601String(),
      'versions': instance.versions,
    };

CrateLinks _$CrateLinksFromJson(Map<String, dynamic> json) => CrateLinks(
      owner_team: json['owner_team'] as String,
      owner_user: json['owner_user'] as String,
      owners: json['owners'] as String,
      reverse_dependencies: json['reverse_dependencies'] as String,
      version_downloads: json['version_downloads'] as String,
      versions: json['versions'],
    );

Map<String, dynamic> _$CrateLinksToJson(CrateLinks instance) =>
    <String, dynamic>{
      'owner_team': instance.owner_team,
      'owner_user': instance.owner_user,
      'owners': instance.owners,
      'reverse_dependencies': instance.reverse_dependencies,
      'version_downloads': instance.version_downloads,
      'versions': instance.versions,
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
