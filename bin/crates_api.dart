import 'package:crates_api/crates_api.dart' as crates_api;

void main(List<String> arguments) async {
  var api = crates_api.CratesAPI();

  var crateR = api.crate("diesel");
  var metadata = await crateR.metadata();
  var crateDownloads = await crateR.downloads();
  var crateVersions = await crateR.versions();
  //var following = await crateR.following();
  await crateR.reverseDependencies();
  var teams = await crateR.ownerTeam();
  print(teams[0].login);
  var users = await crateR.ownerUser();
  print(users[0].login);

  print(metadata.crate.categories);
  print(crateDownloads.meta.extra_downloads.length);
  print(crateVersions.length);

  var versionR = crateR.version("2.0.2");
  var versionMetadata = await versionR.metadata();

  // ignore: unused_local_variable
  var readme = await versionR.readme();
  var deps = await versionR.dependencies();
  var downloads = await versionR.downloads();
  print(versionMetadata.checksum);
  print(deps[0].crate_id);
  print(downloads[0].date);

  await api.keywords();
  await api.keyword("12b");

  await api.categories();
  await api.category("accessibility");
  await api.categorySlugs();

  await api.user("killercup");
  await api.userStats(58);

  await api.team("github:diesel-rs:core");
}
