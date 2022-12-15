import 'dart:convert';

import 'package:http/http.dart' as http;

class BaseCratesAPI {
  String registry = 'crates.io';
  String apiRoot = '/api/v1';

  BaseCratesAPI();
  BaseCratesAPI.withRoot(String apiRoot) {
    apiRoot = apiRoot;
  }
  BaseCratesAPI.custom(String registry, String apiRoot) {
    registry = registry;
    apiRoot = apiRoot;
  }

  http.Client _client() {
    return http.Client();
  }

  Uri _uri(String apiPath) {
    return Uri.http(registry, '$apiRoot/$apiPath');
  }

  Future<dynamic> getJSON(String path) async {
    var client = _client();
    try {
      var response = await client.get(_uri(path));

      var json = jsonDecode(response.body);

      return json;
    } finally {
      client.close();
    }
  }
}
