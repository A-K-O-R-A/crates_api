// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShowUser _$ShowUserFromJson(Map<String, dynamic> json) => ShowUser(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ShowUserToJson(ShowUser instance) => <String, dynamic>{
      'user': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      avatar: json['avatar'] as String,
      id: json['id'] as int,
      login: json['login'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'avatar': instance.avatar,
      'id': instance.id,
      'login': instance.login,
      'name': instance.name,
      'url': instance.url,
    };
