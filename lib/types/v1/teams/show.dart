import 'package:json_annotation/json_annotation.dart';

part 'show.g.dart';

@JsonSerializable()
class ShowTeam {
  ShowTeam({
    required this.team,
  });

  Team team;

  factory ShowTeam.fromJson(Map<String, dynamic> json) =>
      _$ShowTeamFromJson(json);

  Map<String, dynamic> toJson() => _$ShowTeamToJson(this);
}

@JsonSerializable()
class Team {
  Team({
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

  factory Team.fromJson(Map<String, dynamic> json) => _$TeamFromJson(json);

  Map<String, dynamic> toJson() => _$TeamToJson(this);
}
