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

Following _$FollowingFromJson(Map<String, dynamic> json) => Following(
      following: json['following'] as bool,
    );

Map<String, dynamic> _$FollowingToJson(Following instance) => <String, dynamic>{
      'following': instance.following,
    };

ReverseDependencies _$ReverseDependenciesFromJson(Map<String, dynamic> json) =>
    ReverseDependencies(
      dependencies: (json['dependencies'] as List<dynamic>)
          .map((e) => Dependency.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: ReverseDependenciesMeta.fromJson(
          json['meta'] as Map<String, dynamic>),
      versions: (json['versions'] as List<dynamic>)
          .map((e) => Version.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ReverseDependenciesToJson(
        ReverseDependencies instance) =>
    <String, dynamic>{
      'dependencies': instance.dependencies,
      'meta': instance.meta,
      'versions': instance.versions,
    };

ReverseDependenciesMeta _$ReverseDependenciesMetaFromJson(
        Map<String, dynamic> json) =>
    ReverseDependenciesMeta(
      total: json['total'] as int,
    );

Map<String, dynamic> _$ReverseDependenciesMetaToJson(
        ReverseDependenciesMeta instance) =>
    <String, dynamic>{
      'total': instance.total,
    };

OwnerTeams _$OwnerTeamsFromJson(Map<String, dynamic> json) => OwnerTeams(
      teams: (json['teams'] as List<dynamic>)
          .map((e) => Team.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OwnerTeamsToJson(OwnerTeams instance) =>
    <String, dynamic>{
      'teams': instance.teams,
    };

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      avatar: json['avatar'] as String,
      id: json['id'] as int,
      kind: json['kind'] as String,
      login: json['login'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'id': instance.id,
      'kind': instance.kind,
      'login': instance.login,
      'name': instance.name,
      'url': instance.url,
    };

OwnerUsers _$OwnerUsersFromJson(Map<String, dynamic> json) => OwnerUsers(
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$OwnerUsersToJson(OwnerUsers instance) =>
    <String, dynamic>{
      'users': instance.users,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      avatar: json['avatar'] as String,
      id: json['id'] as int,
      kind: json['kind'] as String,
      login: json['login'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'id': instance.id,
      'kind': instance.kind,
      'login': instance.login,
      'name': instance.name,
      'url': instance.url,
    };
