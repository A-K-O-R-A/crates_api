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
  final String license;
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
    this.versionDownloads,
  });

  final String authors;
  final String dependencies;
  final String? versionDownloads;

  factory VersionLinks.fromJson(Map<String, dynamic> json) =>
      _$VersionLinksFromJson(json);

  Map<String, dynamic> toJson() => _$VersionLinksToJson(this);
}
