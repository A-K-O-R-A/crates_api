import 'package:crates_api/types/crate_metadata.dart';
import 'package:crates_api/base.dart';
import 'package:crates_api/types/version.dart';

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

  Future<VersionEndpoint> metadata() async {
    var json = await getJSON('/crates/$crate/$version');

    return VersionEndpoint.fromJson(json);
  }

  Future<VersionEndpoint> authors() async {
    var json = await getJSON('/crates/$crate/$version/authors');

    return VersionEndpoint.fromJson(json);
  }

  Future<VersionEndpoint> dependencies() async {
    var json = await getJSON('/crates/$crate/$version/authors');

    return VersionEndpoint.fromJson(json);
  }

  Future<VersionEndpoint> downloads() async {
    var json = await getJSON('/crates/$crate/$version/authors');

    return VersionEndpoint.fromJson(json);
  }
}
