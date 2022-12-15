import 'package:json_annotation/json_annotation.dart';

part 'show.g.dart';

@JsonSerializable()
class ShowUser {
  ShowUser({
    required this.user,
  });

  User user;

  factory ShowUser.fromJson(Map<String, dynamic> json) =>
      _$ShowUserFromJson(json);

  Map<String, dynamic> toJson() => _$ShowUserToJson(this);
}

@JsonSerializable()
class User {
  User({
    required this.avatar,
    required this.id,
    required this.login,
    required this.name,
    required this.url,
  });

  String avatar;
  int id;
  String login;
  String name;
  String url;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
