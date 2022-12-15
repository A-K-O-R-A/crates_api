// ignore_for_file: non_constant_identifier_names

import 'package:json_annotation/json_annotation.dart';

part 'dependencies.g.dart';

@JsonSerializable()
class Dependencies {
  Dependencies({
    required this.dependencies,
  });

  List<Dependency> dependencies;

  factory Dependencies.fromJson(Map<String, dynamic> json) =>
      _$DependenciesFromJson(json);

  Map<String, dynamic> toJson() => _$DependenciesToJson(this);
}

@JsonSerializable()
class Dependency {
  Dependency({
    required this.crate_id,
    required this.default_features,
    required this.downloads,
    required this.features,
    required this.id,
    required this.kind,
    required this.optional,
    required this.req,
    required this.target,
    required this.version_id,
  });

  String crate_id;
  bool default_features;
  int downloads;
  List<String> features;
  int id;
  Kind kind;
  bool optional;
  String req;
  dynamic target;
  int version_id;

  factory Dependency.fromJson(Map<String, dynamic> json) =>
      _$DependencyFromJson(json);

  Map<String, dynamic> toJson() => _$DependencyToJson(this);
}

@JsonEnum()
enum Kind { normal, dev }
