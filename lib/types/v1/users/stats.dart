// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'stats.g.dart';

@JsonSerializable()
class UserStats {
  UserStats({
    required this.total_downloads,
  });

  int total_downloads;

  factory UserStats.fromJson(Map<String, dynamic> json) =>
      _$UserStatsFromJson(json);

  Map<String, dynamic> toJson() => _$UserStatsToJson(this);
}
