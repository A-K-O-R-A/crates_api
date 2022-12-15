import 'dart:convert';

import 'package:crates_api/types/metadata.dart';
import 'package:http/http.dart' as http;

int calculate() {
  return 6 * 7;
}

Future<Metadata> uwu(String crate) async {
  final client = http.Client();

  try {
    var body =
        await client.read(Uri.http('crates.io', '/api/v1/crates/$crate'));
    //print(body);

    var metadata = Metadata.fromJson(jsonDecode(body));
    return metadata;
  } finally {
    client.close();
  }
}

class CratesAPI extends BaseCratesAPI {
  Future<Metadata> metadata(String crate) async {
    var json = await _getJSON('/crates/$crate');

    return Metadata.fromJson(json);
  }
}

class BaseCratesAPI {
  final String _registry = 'crates.io';
  final String _apiRoot = '/api/v1';

  BaseCratesAPI();

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
}
