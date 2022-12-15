// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowTeam _$ShowTeamFromJson(Map<String, dynamic> json) => ShowTeam(
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShowTeamToJson(ShowTeam instance) => <String, dynamic>{
      'team': instance.team,
    };

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      avatar: json['avatar'] as String,
      id: json['id'] as int,
      login: json['login'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'id': instance.id,
      'login': instance.login,
      'name': instance.name,
      'url': instance.url,
    };
