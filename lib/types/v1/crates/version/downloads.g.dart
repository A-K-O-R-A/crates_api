// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Downloads _$DownloadsFromJson(Map<String, dynamic> json) => Downloads(
      version_downloads: (json['version_downloads'] as List<dynamic>)
          .map((e) => VersionDownload.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DownloadsToJson(Downloads instance) => <String, dynamic>{
      'version_downloads': instance.version_downloads,
    };

VersionDownload _$VersionDownloadFromJson(Map<String, dynamic> json) =>
    VersionDownload(
      date: DateTime.parse(json['date'] as String),
      downloads: json['downloads'] as int,
      version: json['version'] as int,
    );

Map<String, dynamic> _$VersionDownloadToJson(VersionDownload instance) =>
    <String, dynamic>{
      'date': instance.date.toIso8601String(),
      'downloads': instance.downloads,
      'version': instance.version,
    };
