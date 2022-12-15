import 'package:crates_api/types/metadata.dart';
import 'package:crates_api/base.dart';

class CratesAPI extends BaseCratesAPI {
  Future<Metadata> metadata(String crate) async {
    var json = await getJSON('/crates/$crate');

    return Metadata.fromJson(json);
  }
}
