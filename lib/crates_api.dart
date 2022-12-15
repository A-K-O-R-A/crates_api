import 'types/v1/export.dart';
import 'base.dart';

class CratesAPI extends BaseCratesAPI {
  CrateR crate(String crate) {
    return CrateR(crate, registry, apiRoot);
  }

  Future<Keywords> keywords() async {
    var json = await getJSON('/keywords');

    return Keywords.fromJson(json);
  }

  Future<Keyword> keyword(String keyword) async {
    var json = await getJSON('/keywords/$keyword');

    return ShowKeyword.fromJson(json).keyword;
  }

  Future<Categories> categories() async {
    var json = await getJSON('/categories');

    return Categories.fromJson(json);
  }

  Future<DetailedCategory> category(String categoryId) async {
    var json = await getJSON('/categories/$categoryId');

    return ShowCategory.fromJson(json).category;
  }

  Future<List<CategorySlug>> categorySlugs() async {
    var json = await getJSON('/category_slugs');

    return CategorySlugs.fromJson(json).category_slugs;
  }

  Future<User> user(String login) async {
    var json = await getJSON('/users/$login');

    return ShowUser.fromJson(json).user;
  }

  Future<UserStats> userStats(int userId) async {
    var json = await getJSON('/users/$userId/stats');

    return UserStats.fromJson(json);
  }

  Future<Team> team(String login) async {
    var json = await getJSON('/teams/$login');

    return ShowTeam.fromJson(json).team;
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

  Future<CrateDownloads> downloads() async {
    var json = await getJSON('/crates/$crate/downloads');

    return CrateDownloads.fromJson(json);
  }

  Future<List<Version>> versions() async {
    var json = await getJSON('/crates/$crate');

    return CrateVersionsEndpoint.fromJson(json).versions;
  }

  Future<bool> following() async {
    var json = await getJSON('/crates/$crate/following');

    return Following.fromJson(json).following;
  }

  Future<ReverseDependencies> reverseDependencies() async {
    var json = await getJSON('/crates/$crate/reverse_dependencies');

    return ReverseDependencies.fromJson(json);
  }

  Future<List<MetadataTeam>> ownerTeam() async {
    var json = await getJSON('/crates/$crate/owner_team');

    return OwnerTeams.fromJson(json).teams;
  }

  Future<List<MetadataUser>> ownerUser() async {
    var json = await getJSON('/crates/$crate/owner_user');

    return OwnerUsers.fromJson(json).users;
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

  Future<List<VersionDownload>> downloads() async {
    var json = await getJSON('/crates/$crate/$version/downloads');

    return Downloads.fromJson(json).version_downloads;
  }
}
