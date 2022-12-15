// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'downloads.g.dart';

@JsonSerializable()
class Downloads {
  Downloads({
    required this.version_downloads,
  });

  List<VersionDownload> version_downloads;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);

  Map<String, dynamic> toJson() => _$DownloadsToJson(this);
}

@JsonSerializable()
class VersionDownload {
  VersionDownload({
    required this.date,
    required this.downloads,
    required this.version,
  });

  DateTime date;
  int downloads;
  int version;

  factory VersionDownload.fromJson(Map<String, dynamic> json) =>
      _$VersionDownloadFromJson(json);

  Map<String, dynamic> toJson() => _$VersionDownloadToJson(this);
}
