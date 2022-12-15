import 'package:json_annotation/json_annotation.dart';

part 'authors.g.dart';

@JsonSerializable()
class Authors {
  Authors({
    required this.meta,
    required this.users,
  });

  final Meta meta;
  final List<dynamic> users;

  factory Authors.fromJson(Map<String, dynamic> json) =>
      _$AuthorsFromJson(json);

  Map<String, dynamic> toJson() => _$AuthorsToJson(this);
}

@JsonSerializable()
class Meta {
  Meta({
    required this.names,
  });

  final List<String> names;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);

  Map<String, dynamic> toJson() => _$MetaToJson(this);
}
