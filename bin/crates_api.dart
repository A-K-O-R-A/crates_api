import 'package:crates_api/crates_api.dart' as crates_api;

void main(List<String> arguments) async {
  var api = crates_api.CratesAPI();

  var crateR = api.crate("diesel");
  var metadata = await crateR.metadata();

  var versionR = crateR.version("2.0.2");
  var versionMetadata = await versionR.metadata();
  // ignore: unused_local_variable
  var readme = await versionR.readme();
  var deps = await versionR.dependencies();

  print(metadata.crate.categories);
  print(versionMetadata.checksum);
  print(deps[0].crate_id);
}
