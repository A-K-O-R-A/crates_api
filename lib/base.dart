import 'dart:convert';

import 'package:http/http.dart' as http;

class BaseCratesAPI {
  String _registry = 'crates.io';
  String _apiRoot = '/api/v1';

  BaseCratesAPI();
  BaseCratesAPI.withRoot(String apiRoot) {
    _apiRoot = apiRoot;
  }
  BaseCratesAPI.custom(String registry, String apiRoot) {
    _registry = registry;
    _apiRoot = apiRoot;
  }

  http.Client _client() {
    return http.Client();
  }

  Uri _uri(String apiPath) {
    return Uri.http(_registry, '$_apiRoot/$apiPath');
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
