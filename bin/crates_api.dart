import 'package:crates_api/crates_api.dart' as crates_api;

void main(List<String> arguments) async {
  print('Hello world: ${crates_api.calculate()}!');

  var api = crates_api.CratesAPI();

  var metadata = await api.metadata("anyhow");
  var metadata2 = await api.metadata("anyhow");

  print(metadata.crate.categories);
}
