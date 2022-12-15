// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIError _$ErrorFromJson(Map<String, dynamic> json) => APIError(
      errors: (json['errors'] as List<dynamic>)
          .map((e) => ErrorElement.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ErrorToJson(APIError instance) => <String, dynamic>{
      'errors': instance.errors,
    };

ErrorElement _$ErrorElementFromJson(Map<String, dynamic> json) => ErrorElement(
      detail: json['detail'] as String,
    );

Map<String, dynamic> _$ErrorElementToJson(ErrorElement instance) =>
    <String, dynamic>{
      'detail': instance.detail,
    };
