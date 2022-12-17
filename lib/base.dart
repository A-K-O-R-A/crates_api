import 'dart:convert';

import 'package:crates_api/types/v1/error.dart';
import 'package:http/http.dart' as http;

class BaseCratesAPI {
  /// The domain of the crates.io registry (`crates.io`)
  String registry = 'crates.io';

  /// The base path of api (`/api/v1`)
  String apiRoot = '/api/v1';

  /// This should uniquely identify your application, it ´
  /// is recommended to follow the syntax: "my_app (my_app.com/info)".
  /// You can read more about crates.io's Crawler policy
  ///  on https://crates.io/policies#crawlers
  String applicationName;

  BaseCratesAPI(this.applicationName);
  BaseCratesAPI.withRoot(this.applicationName, String apiRoot) {
    apiRoot = apiRoot;
  }
  BaseCratesAPI.custom(this.applicationName, String registry, String apiRoot) {
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
      var response = await client
          .get(getURI(path), headers: {"User-Agent": applicationName});
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
