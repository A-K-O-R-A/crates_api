// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

import 'version/version.dart';

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
    required this.crates_cnt,
    required this.created_at,
    required this.description,
    required this.id,
    required this.slug,
  });

  final String category;
  final int crates_cnt;
  final DateTime created_at;
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
    required this.created_at,
    required this.description,
    this.documentation,
    required this.downloads,
    required this.exact_match,
    required this.homepage,
    required this.id,
    required this.keywords,
    required this.links,
    required this.max_stable_version,
    required this.max_version,
    required this.name,
    required this.newest_version,
    required this.recent_downloads,
    required this.repository,
    required this.updated_at,
    required this.versions,
  });

  final List<dynamic> badges;
  final List<String> categories;
  final DateTime created_at;
  final String description;
  final String? documentation;
  final int downloads;
  final bool exact_match;
  final dynamic homepage;
  final String id;
  final List<String> keywords;
  final CrateLinks links;
  final String max_stable_version;
  final String max_version;
  final String name;
  final String newest_version;
  final int recent_downloads;
  final String repository;
  final DateTime updated_at;
  final List<int> versions;

  factory Crate.fromJson(Map<String, dynamic> json) => _$CrateFromJson(json);

  Map<String, dynamic> toJson() => _$CrateToJson(this);
}

@JsonSerializable()
class CrateLinks {
  CrateLinks({
    required this.owner_team,
    required this.owner_user,
    required this.owners,
    required this.reverse_dependencies,
    required this.version_downloads,
    required this.versions,
  });

  final String owner_team;
  final String owner_user;
  final String owners;
  final String reverse_dependencies;
  final String version_downloads;
  final dynamic versions;

  factory CrateLinks.fromJson(Map<String, dynamic> json) =>
      _$CrateLinksFromJson(json);

  Map<String, dynamic> toJson() => _$CrateLinksToJson(this);
}

@JsonSerializable()
class Keyword {
  Keyword({
    required this.crates_cnt,
    required this.created_at,
    required this.id,
    required this.keyword,
  });

  final int crates_cnt;
  final DateTime created_at;
  final String id;
  final String keyword;

  factory Keyword.fromJson(Map<String, dynamic> json) =>
      _$KeywordFromJson(json);

  Map<String, dynamic> toJson() => _$KeywordToJson(this);
}
