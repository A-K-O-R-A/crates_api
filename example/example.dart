import 'package:crates_api/crates_api.dart';
import 'package:crates_api/types/v1/error.dart';

void main(List<String> arguments) async {
  var api = CratesAPI("crates_api.dart testing");

  var versionR = api.crate("diesel").version("2.0.2");

  try {
    var versionMetadata = await versionR.metadata();
    var versionDownloads = await versionR.downloads();
    var checksum = versionMetadata.checksum;
    print(
      "Checksum of diesel version 2.0.2 $checksum",
    );

    var downloadEntry = versionDownloads[0];
    var entryVersion = downloadEntry.version;
    var entryDate = downloadEntry.date;
    var entryDownloads = downloadEntry.downloads;
    print(
        "Version $entryVersion was downloaded $entryDownloads times on $entryDate");
  } on APIException catch (e) {
    print(e.errors.map((e) => e.detail));
  }
}
