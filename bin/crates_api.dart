import 'package:crates_api/crates_api.dart' as crates_api;

void main(List<String> arguments) async {
  var api = crates_api.CratesAPI();

  var crate_r = api.crate("anyhow");
  var metadata = await crate_r.metadata();
  var version = await crate_r.version("1.0.0");

  print(metadata.crate.categories);
  print(version.version.checksum);
}
