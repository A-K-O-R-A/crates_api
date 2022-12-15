import 'dart:convert';

import 'package:crates_api/types/v1/error.dart';
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

  http.Client createClient() {
    return http.Client();
  }

  Uri getURI(String apiPath) {
    return Uri.http(registry, '$apiRoot/$apiPath');
  }

  Future<dynamic> getJSON(String path) async {
    var client = createClient();
    try {
      var response = await client.get(getURI(path));
      var json = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return json;
      } else {
        var error = APIError.fromJson(json);
        throw error.toException();
      }
    } catch (e) {
      rethrow;
    } finally {
      client.close();
    }
  }
}
