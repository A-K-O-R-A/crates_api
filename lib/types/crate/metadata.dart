import 'package:json_annotation/json_annotation.dart';

import 'version.dart';

part 'metadata.g.dart';

@JsonSerializable()
class CrateMetadata {
  CrateMetadata({
    required this.categories,
    required this.crate,
    required this.keywords,
    required this.versions,
  });

  final List<Category> categories;
  final Crate crate;
  final List<Keyword> keywords;
  final List<Version> versions;

  factory CrateMetadata.fromJson(Map<String, dynamic> json) =>
      _$CrateMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$CrateMetadataToJson(this);
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
