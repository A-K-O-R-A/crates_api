import 'package:json_annotation/json_annotation.dart';

part 'metadata.g.dart';

@JsonSerializable()
class Metadata {
  Metadata({
    required this.categories,
    required this.crate,
    required this.keywords,
    required this.versions,
  });

  final List<Category> categories;
  final Crate crate;
  final List<Keyword> keywords;
  final List<Version> versions;

  factory Metadata.fromJson(Map<String, dynamic> json) =>
      _$MetadataFromJson(json);

  Map<String, dynamic> toJson() => _$MetadataToJson(this);
}

@JsonSerializable()
class Category {
  Category({
    required this.category,
    this.cratesCnt,
    this.createdAt,
    required this.description,
    required this.id,
    required this.slug,
  });

  final String category;
  final int? cratesCnt;
  final DateTime? createdAt;
  final String description;
  final String id;
  final String slug;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);
}

@JsonSerializable()
class Crate {
  Crate({
    required this.badges,
    required this.categories,
    this.createdAt,
    required this.description,
    required this.documentation,
    required this.downloads,
    this.exactMatch,
    required this.homepage,
    required this.id,
    required this.keywords,
    required this.links,
    this.maxStableVersion,
    this.maxVersion,
    required this.name,
    this.newestVersion,
    this.recentDownloads,
    required this.repository,
    this.updatedAt,
    required this.versions,
  });

  final List<dynamic> badges;
  final List<String> categories;
  final DateTime? createdAt;
  final String description;
  final String documentation;
  final int downloads;
  final bool? exactMatch;
  final dynamic homepage;
  final String id;
  final List<String> keywords;
  final CrateLinks links;
  final String? maxStableVersion;
  final String? maxVersion;
  final String name;
  final String? newestVersion;
  final int? recentDownloads;
  final String repository;
  final DateTime? updatedAt;
  final List<int> versions;

  factory Crate.fromJson(Map<String, dynamic> json) => _$CrateFromJson(json);

  Map<String, dynamic> toJson() => _$CrateToJson(this);
}

@JsonSerializable()
class CrateLinks {
  CrateLinks({
    this.ownerTeam,
    this.ownerUser,
    required this.owners,
    this.reverseDependencies,
    this.versionDownloads,
    required this.versions,
  });

  final String? ownerTeam;
  final String? ownerUser;
  final String owners;
  final String? reverseDependencies;
  final String? versionDownloads;
  final dynamic versions;

  factory CrateLinks.fromJson(Map<String, dynamic> json) =>
      _$CrateLinksFromJson(json);

  Map<String, dynamic> toJson() => _$CrateLinksToJson(this);
}

@JsonSerializable()
class Keyword {
  Keyword({
    this.cratesCnt,
    this.createdAt,
    required this.id,
    required this.keyword,
  });

  final int? cratesCnt;
  final DateTime? createdAt;
  final String id;
  final String keyword;

  factory Keyword.fromJson(Map<String, dynamic> json) =>
      _$KeywordFromJson(json);

  Map<String, dynamic> toJson() => _$KeywordToJson(this);
}

@JsonSerializable()
class Version {
  Version({
    this.auditActions,
    required this.checksum,
    required this.crate,
    this.crateSize,
    this.createdAt,
    this.dlPath,
    required this.downloads,
    required this.features,
    required this.id,
    required this.license,
    required this.links,
    required this.num,
    this.publishedBy,
    this.readmePath,
    this.updatedAt,
    required this.yanked,
  });

  final List<AuditAction>? auditActions;
  final String checksum;
  final String crate;
  final int? crateSize;
  final DateTime? createdAt;
  final String? dlPath;
  final int downloads;
  final Map<String, List<String>> features;
  final int id;
  final License license;
  final VersionLinks links;
  final String num;
  final PublishedBy? publishedBy;
  final String? readmePath;
  final DateTime? updatedAt;
  final bool yanked;

  factory Version.fromJson(Map<String, dynamic> json) =>
      _$VersionFromJson(json);

  Map<String, dynamic> toJson() => _$VersionToJson(this);
}

@JsonSerializable()
class AuditAction {
  AuditAction({
    required this.action,
    required this.time,
    required this.user,
  });

  final Action action;
  final DateTime time;
  final PublishedBy user;

  factory AuditAction.fromJson(Map<String, dynamic> json) =>
      _$AuditActionFromJson(json);

  Map<String, dynamic> toJson() => _$AuditActionToJson(this);
}

@JsonEnum()
enum Action { PUBLISH }

@JsonSerializable()
class PublishedBy {
  PublishedBy({
    required this.avatar,
    required this.id,
    required this.login,
    required this.name,
    required this.url,
  });

  final String avatar;
  final int id;
  final Login login;
  final Name name;
  final String url;

  factory PublishedBy.fromJson(Map<String, dynamic> json) =>
      _$PublishedByFromJson(json);

  Map<String, dynamic> toJson() => _$PublishedByToJson(this);
}

@JsonEnum()
enum Login { SEANMONSTAR }

@JsonEnum()
enum Name { SEAN_MC_ARTHUR }

@JsonEnum()
enum License {
  @JsonValue("MIT/Apache-2.0")
  mitApache20
}

@JsonSerializable()
class VersionLinks {
  VersionLinks({
    required this.authors,
    required this.dependencies,
    this.versionDownloads,
  });

  final String authors;
  final String dependencies;
  final String? versionDownloads;

  factory VersionLinks.fromJson(Map<String, dynamic> json) =>
      _$VersionLinksFromJson(json);

  Map<String, dynamic> toJson() => _$VersionLinksToJson(this);
}
