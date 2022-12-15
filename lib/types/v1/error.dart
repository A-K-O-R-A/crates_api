import 'package:json_annotation/json_annotation.dart';

part 'error.g.dart';

@JsonSerializable()
class APIError {
  APIError({
    required this.errors,
  });

  List<ErrorElement> errors;

  factory APIError.fromJson(Map<String, dynamic> json) => _$ErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorToJson(this);

  APIException toException() {
    return APIException(errors);
  }
}

@JsonSerializable()
class ErrorElement {
  ErrorElement({
    required this.detail,
  });

  String detail;

  factory ErrorElement.fromJson(Map<String, dynamic> json) =>
      _$ErrorElementFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorElementToJson(this);
}

class APIException implements Exception {
  List<ErrorElement> errors;

  APIException(this.errors);
}
