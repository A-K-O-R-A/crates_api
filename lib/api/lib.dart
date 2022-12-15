library crates_api;

import 'dart:convert';
import 'package:http/http.dart' as http;

import '../types/metadata.dart';

part 'crates.dart';

final String _registry = 'crates.io';
final String _apiRoot = '/api/v1';

http.Client _client() {
  return http.Client();
}

Uri _uri(String apiPath) {
  return Uri.http(_registry, '$_apiRoot/$apiPath');
}

Future<dynamic> _getJSON(String path) async {
  var client = _client();
  try {
    var response = await client.get(_uri(path));

    var json = jsonDecode(response.body);

    return json;
  } finally {
    client.close();
  }
}
