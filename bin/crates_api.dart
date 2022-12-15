import 'package:crates_api/crates_api.dart' as crates_api;
import 'package:crates_api/api/lib.dart' as crates_api2;

void main(List<String> arguments) async {
  var api = crates_api.CratesAPI();

  var metadata = await api.metadata("anyhow");
  var metadata2 = await crates_api2.metadata("anyhow");

  print(metadata.crate.categories);
  print(metadata2.crate.categories);
}
