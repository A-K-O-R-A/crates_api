import 'types/v1/types.dart' as types;
import 'base.dart';

class CratesAPI extends BaseCratesAPI {
  CrateR crate(String crate) {
    return CrateR(crate, registry, apiRoot);
  }

  Future<types.Keywords> keywords() async {
    var json = await getJSON('/keywords');

    return types.Keywords.fromJson(json);
  }

  Future<types.Keyword> keyword(String keyword) async {
    var json = await getJSON('/keywords/$keyword');

    return types.ShowKeyword.fromJson(json).keyword;
  }

  Future<types.Categories> categories() async {
    var json = await getJSON('/categories');

    return types.Categories.fromJson(json);
  }

  Future<types.DetailedCategory> category(String categoryId) async {
    var json = await getJSON('/categories/$categoryId');

    return types.ShowCategory.fromJson(json).category;
  }

  Future<List<types.CategorySlug>> categorySlugs() async {
    var json = await getJSON('/category_slugs');

    return types.CategorySlugs.fromJson(json).category_slugs;
  }

  Future<types.User> user(String login) async {
    var json = await getJSON('/users/$login');

    return types.ShowUser.fromJson(json).user;
  }

  Future<types.UserStats> userStats(int userId) async {
    var json = await getJSON('/users/$userId/stats');

    return types.UserStats.fromJson(json);
  }

  Future<types.Team> team(String login) async {
    var json = await getJSON('/teams/$login');

    return types.ShowTeam.fromJson(json).team;
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

  Future<types.CrateMetadata> metadata() async {
    var json = await getJSON('/crates/$crate');

    return types.CrateMetadata.fromJson(json);
  }

  Future<types.CrateDownloads> downloads() async {
    var json = await getJSON('/crates/$crate/downloads');

    return types.CrateDownloads.fromJson(json);
  }

  Future<List<types.Version>> versions() async {
    var json = await getJSON('/crates/$crate');

    return types.CrateVersionsEndpoint.fromJson(json).versions;
  }

  Future<bool> following() async {
    var json = await getJSON('/crates/$crate/following');

    return types.Following.fromJson(json).following;
  }

  Future<types.ReverseDependencies> reverseDependencies() async {
    var json = await getJSON('/crates/$crate/reverse_dependencies');

    return types.ReverseDependencies.fromJson(json);
  }

  Future<List<types.MetadataTeam>> ownerTeam() async {
    var json = await getJSON('/crates/$crate/owner_team');

    return types.OwnerTeams.fromJson(json).teams;
  }

  Future<List<types.MetadataUser>> ownerUser() async {
    var json = await getJSON('/crates/$crate/owner_user');

    return types.OwnerUsers.fromJson(json).users;
  }
}

class CrateVersionR extends BaseCratesAPI {
  String crate;
  String version;

  CrateVersionR(this.crate, this.version, String registry, String apiRoot) {
    this.registry = registry;
    this.apiRoot = apiRoot;
  }

  Future<types.Version> metadata() async {
    var json = await getJSON('/crates/$crate/$version');

    return types.VersionEndpoint.fromJson(json).version;
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

  Future<types.Authors> authors() async {
    var json = await getJSON('/crates/$crate/$version/authors');

    return types.Authors.fromJson(json);
  }

  Future<List<types.Dependency>> dependencies() async {
    var json = await getJSON('/crates/$crate/$version/dependencies');

    return types.Dependencies.fromJson(json).dependencies;
  }

  Future<List<types.VersionDownload>> downloads() async {
    var json = await getJSON('/crates/$crate/$version/downloads');

    return types.Downloads.fromJson(json).version_downloads;
  }
}
