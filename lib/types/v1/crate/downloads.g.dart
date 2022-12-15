// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CrateDownloads _$CrateDownloadsFromJson(Map<String, dynamic> json) =>
    CrateDownloads(
      meta: Meta.fromJson(json['meta'] as Map<String, dynamic>),
      version_downloads: (json['version_downloads'] as List<dynamic>)
          .map((e) => VersionDownload.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CrateDownloadsToJson(CrateDownloads instance) =>
    <String, dynamic>{
      'meta': instance.meta,
      'version_downloads': instance.version_downloads,
    };

Meta _$MetaFromJson(Map<String, dynamic> json) => Meta(
      extra_downloads: (json['extra_downloads'] as List<dynamic>)
          .map((e) => ExtraDownload.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MetaToJson(Meta instance) => <String, dynamic>{
      'extra_downloads': instance.extra_downloads,
    };

ExtraDownload _$ExtraDownloadFromJson(Map<String, dynamic> json) =>
    ExtraDownload(
      date: DateTime.parse(json['date'] as String),
      downloads: json['downloads'] as int,
    );

Map<String, dynamic> _$ExtraDownloadToJson(ExtraDownload instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'downloads': instance.downloads,
    };
