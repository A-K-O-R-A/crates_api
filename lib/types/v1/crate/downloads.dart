// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

import 'version/downloads.dart';

part 'downloads.g.dart';

@JsonSerializable()
class CrateDownloads {
  CrateDownloads({
    required this.meta,
    required this.version_downloads,
  });

  Meta meta;
  List<VersionDownload> version_downloads;

  factory CrateDownloads.fromJson(Map<String, dynamic> json) =>
      _$CrateDownloadsFromJson(json);

  Map<String, dynamic> toJson() => _$CrateDownloadsToJson(this);
}

@JsonSerializable()
class Meta {
  Meta({
    required this.extra_downloads,
  });

  List<ExtraDownload> extra_downloads;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}

@JsonSerializable()
class ExtraDownload {
  ExtraDownload({
    required this.date,
    required this.downloads,
  });

  DateTime date;
  int downloads;

  factory ExtraDownload.fromJson(Map<String, dynamic> json) =>
      _$ExtraDownloadFromJson(json);

  Map<String, dynamic> toJson() => _$ExtraDownloadToJson(this);
}
