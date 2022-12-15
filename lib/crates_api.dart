import 'package:crates_api/types/crate/authors.dart';
import 'package:crates_api/types/crate/dependencies.dart';
import 'package:crates_api/types/crate/metadata.dart';
import 'package:crates_api/types/crate/version.dart';
import 'package:crates_api/base.dart';

class CratesAPI extends BaseCratesAPI {
  CrateR crate(String crate) {
    return CrateR(crate, registry, apiRoot);
  }
}

class CrateR extends BaseCratesAPI {
  String crate;

  CrateR(this.crate, String registry, String apiRoot) {
    this.registry = registry;
    this.apiRoot = apiRoot;
  }

  CrateVersionR version(String version) {
    return CrateVersionR(crate, version, registry, apiRoot);
  }

  Future<CrateMetadata> metadata() async {
    var json = await getJSON('/crates/$crate');

    return CrateMetadata.fromJson(json);
  }
}

class CrateVersionR extends BaseCratesAPI {
  String crate;
  String version;

  CrateVersionR(this.crate, this.version, String registry, String apiRoot) {
    this.registry = registry;
    this.apiRoot = apiRoot;
  }

  Future<Version> metadata() async {
    var json = await getJSON('/crates/$crate/$version');

    return VersionEndpoint.fromJson(json).version;
  }

  //Returns the raw HTML content of the readme
  Future<String?> readme() async {
    var client = createClient();
    try {
      var response = await client.get(getURI('/crates/$crate/$version/readme'));

      if (response.statusCode == 200) {
        return response.body;
      } else if (response.statusCode == 302) {
        var staticURI = Uri.parse(response.headers['location']!);

        var secResponse = await client.get(staticURI);
        return secResponse.body;
      } else {
        return null;
      }
    } finally {
      client.close();
    }
  }

  Future<Authors> authors() async {
    var json = await getJSON('/crates/$crate/$version/authors');

    return Authors.fromJson(json);
  }

  Future<List<Dependency>> dependencies() async {
    var json = await getJSON('/crates/$crate/$version/dependencies');

    return Dependencies.fromJson(json).dependencies;
  }

  Future<VersionEndpoint> downloads() async {
    var json = await getJSON('/crates/$crate/$version/authors');

    return VersionEndpoint.fromJson(json);
  }
}
