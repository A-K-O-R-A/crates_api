import 'package:json_annotation/json_annotation.dart';

part 'authors.g.dart';

@JsonSerializable()
class Authors {
  Authors({
    required this.meta,
    required this.users,
  });

  final AuthorMeta meta;
  final List<dynamic> users;

  factory Authors.fromJson(Map<String, dynamic> json) =>
      _$AuthorsFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorsToJson(this);
}

@JsonSerializable()
class AuthorMeta {
  AuthorMeta({
    required this.names,
  });

  final List<String> names;

  factory AuthorMeta.fromJson(Map<String, dynamic> json) =>
      _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
