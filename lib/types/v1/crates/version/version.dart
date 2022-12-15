// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'version.g.dart';

@JsonSerializable()
class VersionEndpoint {
  VersionEndpoint({required this.version});

  final Version version;

  factory VersionEndpoint.fromJson(Map<String, dynamic> json) =>
      _$VersionEndpointFromJson(json);

  Map<String, dynamic> toJson() => _$VersionEndpointToJson(this);
}

@JsonSerializable()
class CrateVersionsEndpoint {
  CrateVersionsEndpoint({required this.versions});

  final List<Version> versions;

  factory CrateVersionsEndpoint.fromJson(Map<String, dynamic> json) =>
      _$CrateVersionsEndpointFromJson(json);

  Map<String, dynamic> toJson() => _$CrateVersionsEndpointToJson(this);
}

@JsonSerializable()
class Version {
  Version({
    required this.audit_actions,
    required this.checksum,
    required this.crate,
    this.crate_size,
    required this.created_at,
    required this.dl_path,
    required this.downloads,
    required this.features,
    required this.id,
    required this.license,
    required this.links,
    required this.num,
    this.published_by,
    required this.readme_path,
    required this.updated_at,
    required this.yanked,
  });

  final List<AuditAction> audit_actions;
  final String checksum;
  final String crate;
  final int? crate_size;
  final DateTime created_at;
  final String dl_path;
  final int downloads;
  final Map<String, List<String>> features;
  final int id;
  final String license;
  final VersionLinks links;
  final String num;
  final PublishedBy? published_by;
  final String readme_path;
  final DateTime updated_at;
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
enum Action { publish }

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
  final String login;
  final String name;
  final String url;

  factory PublishedBy.fromJson(Map<String, dynamic> json) =>
      _$PublishedByFromJson(json);

  Map<String, dynamic> toJson() => _$PublishedByToJson(this);
}

/*
@JsonEnum()
enum License {
  @JsonValue("MIT/Apache-2.0")
  mitApache20
}
*/

@JsonSerializable()
class VersionLinks {
  VersionLinks({
    required this.authors,
    required this.dependencies,
    required this.version_downloads,
  });

  final String authors;
  final String dependencies;
  final String version_downloads;

  factory VersionLinks.fromJson(Map<String, dynamic> json) =>
      _$VersionLinksFromJson(json);

  Map<String, dynamic> toJson() => _$VersionLinksToJson(this);
}
